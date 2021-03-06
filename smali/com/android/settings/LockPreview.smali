.class public Lcom/android/settings/LockPreview;
.super Landroid/app/Activity;
.source "LockPreview.java"


# instance fields
.field private final WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private mAnimate:Z

.field private mBoxLayout:Landroid/widget/LinearLayout;

.field private mClockLayout:Landroid/widget/RelativeLayout;

.field private mClockPanel:Lcom/android/settings/ClockPanel;

.field private mHandler:Landroid/os/Handler;

.field private mMainLayout:Landroid/widget/FrameLayout;

.field private mMaxHeight:F

.field private final mStartLockAnimation:Ljava/lang/Runnable;

.field private mTimeTick_Layout_Refresh:Z

.field private mTransAnimation:Landroid/view/animation/TranslateAnimation;

.field private mX:F

.field private mY:F

.field private position:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const-string v0, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/settings/LockPreview;->WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    .line 54
    iput-boolean v2, p0, Lcom/android/settings/LockPreview;->mAnimate:Z

    .line 55
    iput-boolean v2, p0, Lcom/android/settings/LockPreview;->mTimeTick_Layout_Refresh:Z

    .line 58
    iput v1, p0, Lcom/android/settings/LockPreview;->mX:F

    .line 59
    iput v1, p0, Lcom/android/settings/LockPreview;->mY:F

    .line 65
    new-instance v0, Lcom/android/settings/LockPreview$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LockPreview$1;-><init>(Lcom/android/settings/LockPreview;)V

    iput-object v0, p0, Lcom/android/settings/LockPreview;->mStartLockAnimation:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LockPreview;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockPreview;)Landroid/view/animation/TranslateAnimation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/LockPreview;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/settings/LockPreview;->position:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v5, 0x7f040055

    invoke-virtual {p0, v5}, Lcom/android/settings/LockPreview;->setContentView(I)V

    .line 80
    const v5, 0x7f090104

    invoke-virtual {p0, v5}, Lcom/android/settings/LockPreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/settings/LockPreview;->mMainLayout:Landroid/widget/FrameLayout;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/LockPreview;->setLockScreenWallpaper()V

    .line 83
    const v5, 0x7f090105

    invoke-virtual {p0, v5}, Lcom/android/settings/LockPreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    .line 84
    const v5, 0x7f090106

    invoke-virtual {p0, v5}, Lcom/android/settings/LockPreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/LockPreview;->mBoxLayout:Landroid/widget/LinearLayout;

    .line 86
    new-instance v5, Lcom/android/settings/ClockPanel;

    invoke-direct {v5, p0}, Lcom/android/settings/ClockPanel;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    .line 87
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    invoke-virtual {v5, v9}, Lcom/android/settings/ClockPanel;->setVisibility(I)V

    .line 89
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 90
    .local v3, mBlankLinearLayout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v2, mBlankLP:Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 92
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    .local v4, mUnlockClockLP:Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 96
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    invoke-virtual {v5, v4}, Lcom/android/settings/ClockPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/LockPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "clock_position"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_cf

    .line 99
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Lcom/android/settings/ClockPanel;->setGravity(I)V

    .line 100
    iput v9, p0, Lcom/android/settings/LockPreview;->position:I

    .line 113
    :goto_73
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/settings/LockPreview;->mHandler:Landroid/os/Handler;

    .line 118
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x41a0

    const/high16 v7, -0x3e60

    invoke-direct {v5, v10, v6, v10, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    .line 119
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 120
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v5, v8}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 121
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v5, v8}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 122
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v5, v9}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 123
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 125
    const v5, 0x7f090107

    invoke-virtual {p0, v5}, Lcom/android/settings/LockPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 126
    .local v1, ButtonOk:Landroid/widget/Button;
    new-instance v5, Lcom/android/settings/LockPreview$2;

    invoke-direct {v5, p0}, Lcom/android/settings/LockPreview$2;-><init>(Lcom/android/settings/LockPreview;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v5, 0x7f090108

    invoke-virtual {p0, v5}, Lcom/android/settings/LockPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 133
    .local v0, ButtonCancel:Landroid/widget/Button;
    new-instance v5, Lcom/android/settings/LockPreview$3;

    invoke-direct {v5, p0}, Lcom/android/settings/LockPreview$3;-><init>(Lcom/android/settings/LockPreview;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void

    .line 102
    .end local v0           #ButtonCancel:Landroid/widget/Button;
    .end local v1           #ButtonOk:Landroid/widget/Button;
    :cond_cf
    invoke-virtual {p0}, Lcom/android/settings/LockPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "clock_position"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_e5

    .line 103
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/android/settings/ClockPanel;->setGravity(I)V

    .line 104
    iput v8, p0, Lcom/android/settings/LockPreview;->position:I

    goto :goto_73

    .line 107
    :cond_e5
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Lcom/android/settings/ClockPanel;->setGravity(I)V

    .line 108
    iput v7, p0, Lcom/android/settings/LockPreview;->position:I

    goto :goto_73
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    const/high16 v12, 0x41a0

    const/4 v11, 0x0

    const/high16 v10, 0x4040

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 143
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 144
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 145
    .local v4, y:F
    const/4 v1, 0x0

    .line 146
    .local v1, diffX_ori:I
    const/4 v2, 0x0

    .line 148
    .local v2, diffY_ori:I
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/settings/LockPreview;->mMaxHeight:F

    .line 150
    const-string v5, "LockPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " y : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMaxHeight /3 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/LockPreview;->mMaxHeight:F

    div-float/2addr v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    packed-switch v0, :pswitch_data_114

    .line 214
    :cond_50
    :goto_50
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 154
    :pswitch_55
    iput-boolean v9, p0, Lcom/android/settings/LockPreview;->mTimeTick_Layout_Refresh:Z

    .line 155
    iget-boolean v5, p0, Lcom/android/settings/LockPreview;->mAnimate:Z

    if-nez v5, :cond_66

    .line 156
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/LockPreview;->mStartLockAnimation:Ljava/lang/Runnable;

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    iput-boolean v9, p0, Lcom/android/settings/LockPreview;->mAnimate:Z

    .line 159
    :cond_66
    iput v3, p0, Lcom/android/settings/LockPreview;->mX:F

    .line 160
    iput v4, p0, Lcom/android/settings/LockPreview;->mY:F

    goto :goto_50

    .line 163
    :pswitch_6b
    iput-boolean v8, p0, Lcom/android/settings/LockPreview;->mTimeTick_Layout_Refresh:Z

    .line 164
    iget-boolean v5, p0, Lcom/android/settings/LockPreview;->mAnimate:Z

    if-eqz v5, :cond_84

    .line 165
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/LockPreview;->mStartLockAnimation:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v5, v8}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 167
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 168
    iput-boolean v8, p0, Lcom/android/settings/LockPreview;->mAnimate:Z

    .line 170
    :cond_84
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_50

    .line 172
    iget v5, p0, Lcom/android/settings/LockPreview;->mX:F

    sub-float v5, v3, v5

    add-float/2addr v5, v12

    float-to-int v1, v5

    .line 173
    iget v5, p0, Lcom/android/settings/LockPreview;->mY:F

    sub-float v5, v4, v5

    sub-float/2addr v5, v12

    float-to-int v2, v5

    .line 174
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v1, v2, v6, v7}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_50

    .line 181
    :pswitch_a8
    const-string v5, "LockPreview"

    const-string v6, "ACTION_UP()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :pswitch_af
    iput v11, p0, Lcom/android/settings/LockPreview;->mX:F

    .line 184
    iput v11, p0, Lcom/android/settings/LockPreview;->mY:F

    .line 185
    iput-boolean v8, p0, Lcom/android/settings/LockPreview;->mTimeTick_Layout_Refresh:Z

    .line 187
    iget-boolean v5, p0, Lcom/android/settings/LockPreview;->mAnimate:Z

    if-eqz v5, :cond_cc

    .line 188
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/LockPreview;->mStartLockAnimation:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v5, v9}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 190
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 191
    iput-boolean v8, p0, Lcom/android/settings/LockPreview;->mAnimate:Z

    .line 194
    :cond_cc
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_e1

    .line 195
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 198
    :cond_e1
    iget v5, p0, Lcom/android/settings/LockPreview;->mMaxHeight:F

    div-float/2addr v5, v10

    cmpl-float v5, v5, v4

    if-lez v5, :cond_f3

    .line 199
    iput v8, p0, Lcom/android/settings/LockPreview;->position:I

    .line 200
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Lcom/android/settings/ClockPanel;->setGravity(I)V

    goto/16 :goto_50

    .line 202
    :cond_f3
    iget v5, p0, Lcom/android/settings/LockPreview;->mMaxHeight:F

    div-float/2addr v5, v10

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    cmpl-float v5, v5, v4

    if-lez v5, :cond_108

    .line 203
    iput v9, p0, Lcom/android/settings/LockPreview;->position:I

    .line 204
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/android/settings/ClockPanel;->setGravity(I)V

    goto/16 :goto_50

    .line 207
    :cond_108
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/settings/LockPreview;->position:I

    .line 208
    iget-object v5, p0, Lcom/android/settings/LockPreview;->mClockPanel:Lcom/android/settings/ClockPanel;

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Lcom/android/settings/ClockPanel;->setGravity(I)V

    goto/16 :goto_50

    .line 152
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_55
        :pswitch_a8
        :pswitch_6b
        :pswitch_af
    .end packed-switch
.end method

.method public setLockScreenWallpaper()V
    .registers 8

    .prologue
    const v6, 0x1080226

    .line 219
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 223
    :try_start_10
    iget-object v2, p0, Lcom/android/settings/LockPreview;->mMainLayout:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/settings/LockPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_21

    .line 231
    :goto_20
    return-void

    .line 224
    :catch_21
    move-exception v0

    .line 225
    .local v0, ex:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/settings/LockPreview;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/LockPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_20

    .line 229
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_30
    iget-object v2, p0, Lcom/android/settings/LockPreview;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/LockPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_20
.end method

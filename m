Return-Path: <h4nn35.work@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B2CCE00D48; Wed,  2 Mar 2016 04:45:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (h4nn35.work[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC6AFE00D33
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 04:45:17 -0800 (PST)
Received: by mail-wm0-f49.google.com with SMTP id l68so76083991wml.1
	for <yocto@yoctoproject.org>; Wed, 02 Mar 2016 04:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=3+2T+K+PZaHvGbYXGjd83aAvZBtNO2d9y+sLD4glnc0=;
	b=Jfv6iAzC36RijOei22P/eZzZhBp8iOkihKwFV2XG+/XcQmYv3CdfaICnaPxL86FxLY
	Ddl4JfkXyFicc+6aNphRCNsO2/GT5nS9zGLG9LHqCFNUoC/meXtDGusKLjAFBx4RUE3y
	MXNZggEBxhJZfSPHsU7+Aqsaz9wFmwohxtW+OfpqtazI1DjVOEpXwL3sMCzzCpiKRzT5
	rRTskhP4dcmUqRTvThORWUo2cstBh/TcB9WiEWptwbZfsBWxAp9WQBzWgLVHyjBgTsIl
	mIg9Z1m0eTi5734ZcpDQisMA0+1yM+es96VyBBNNUY4nHtOlDYZ7MIiH+0RstH/1zAsI
	s7aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=3+2T+K+PZaHvGbYXGjd83aAvZBtNO2d9y+sLD4glnc0=;
	b=FlMblaFsro6u1ckmC5bzZVmGUA4m3IiRQvK9Z/u11MO6woW6SytwxzmSCZHekrKOPr
	1elImPpzokGoF5ne+i3f0mr6HGxCJ7twbkrtcBqUnV7MBzgavrhUIZdSTM3OKEDruZ3t
	0aH4wv4tVyFdKDM5MCBx4rY7IrUzlfbYL3r9itQXB3o39elnAgLn03/qGfxv5RHUcmxQ
	fKdAdiqJiX6LO5spppdSPPeYLxNkgUFob71NugPIz0QKbeysA29m5RS//AbCJaMyFr2P
	ag8+q/5N2YjTfZ3qkWpi518YjzU1wlHsvKV/hIvPJ/6hcqNvpUv1phNydxdjjotv9ekl
	WO4A==
X-Gm-Message-State: AD7BkJIRDp2Bq7veDmoyw4+Y/d3A4K5wUcky3qqKEt879rbEUyJ2UYwWD10q8FyXqHm9bpgeNbthCEAKdCcWAw==
MIME-Version: 1.0
X-Received: by 10.194.246.35 with SMTP id xt3mr28682995wjc.57.1456922716676;
	Wed, 02 Mar 2016 04:45:16 -0800 (PST)
Received: by 10.27.219.20 with HTTP; Wed, 2 Mar 2016 04:45:16 -0800 (PST)
In-Reply-To: <CAJTo0LYtJC5ROMveR3ze8PwZjYVZrO98bJQ6MubmuPmPog2oaA@mail.gmail.com>
References: <1456876322-11550-1-git-send-email-johannes.pointner@gmail.com>
	<CAJTo0LYtJC5ROMveR3ze8PwZjYVZrO98bJQ6MubmuPmPog2oaA@mail.gmail.com>
Date: Wed, 2 Mar 2016 13:45:16 +0100
Message-ID: <CAHvQdo1934XFM62FZfQXs8JrakeCyS-e0q+vUgE-Q+uUAVtOvA@mail.gmail.com>
From: Johannes Pointner <h4nn35.work@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [xcursor-transparent-theme][Patch] Add several cursors
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 Mar 2016 12:45:21 -0000
Content-Type: text/plain; charset=UTF-8

Hello Ross,

thanks.

I didn't know this option.
But I think there is still a use case for the
xcursor-transparent-theme. Because the cursor theme can be set before
starting a new application without restarting X11.


2016-03-02 13:19 GMT+01:00 Burton, Ross <ross.burton@intel.com>:
> Hi Johannes,
>
> This and the other patch have been merged, thanks.
>
> However I just realised that we don't actually need this anymore and should
> instead be passing -nocursor when starting X11.
>
> Ross
>
>
> On 1 March 2016 at 23:52, Johannes Pointner <h4nn35.work@gmail.com> wrote:
>>
>> This patch adds several cursor to the transparent-theme which are
>> used by Qt for example.
>>
>> Signed-off-by: Johannes Pointner <johannes.pointner@gmail.com>
>> ---
>>  cursors/Makefile.am | 24 ++++++++++++++++++++++++
>>  1 file changed, 24 insertions(+)
>>
>> diff --git a/cursors/Makefile.am b/cursors/Makefile.am
>> index d699942..587f4e5 100644
>> --- a/cursors/Makefile.am
>> +++ b/cursors/Makefile.am
>> @@ -26,10 +26,17 @@ CURSOR_NAMES = \
>>         bottom_tee \
>>         center_ptr \
>>         circle \
>> +       closedhand \
>> +       color-picker \
>> +       copy \
>>         cross \
>>         cross_reverse \
>>         crossed_circle \
>>         crosshair \
>> +       dnd-copy \
>> +       dnd-move \
>> +       dnd-no-drop \
>> +       dnd-none \
>>         dot \
>>         dot_box_mask \
>>         dotbox \
>> @@ -40,21 +47,27 @@ CURSOR_NAMES = \
>>         exchange     \
>>         fd_double_arrow \
>>         fleur \
>> +       forbidden \
>>         gumby \
>>         h_double_arrow \
>>         hand \
>>         hand1 \
>>         hand2 \
>> +       ibeam \
>>         left_ptr \
>>         left_ptr_watch \
>>         left_side \
>>         left_tee  \
>> +       link \
>>         ll_angle  \
>>         lr_angle  \
>>         move      \
>> +       openhand \
>>         pencil    \
>>         pirate    \
>>         plus      \
>> +       pointing_hand \
>> +       progress \
>>         question_arrow \
>>         right_ptr      \
>>         right_side     \
>> @@ -67,9 +80,17 @@ CURSOR_NAMES = \
>>         sb_up_arrow \
>>         sb_v_double_arrow \
>>         shuttle \
>> +       size_all \
>> +       size_bdiag \
>> +       size_fdiag \
>> +       size_hor \
>> +       size_ver \
>>         sizing  \
>> +       split_h \
>> +       split_v \
>>         target  \
>>         tcross  \
>> +       text \
>>         top_left_arrow  \
>>         top_left_corner \
>>         top_right_corner \
>> @@ -77,9 +98,12 @@ CURSOR_NAMES = \
>>         top_tee \
>>         trek \
>>         ul_angle \
>> +       up_arrow \
>>         ur_angle \
>>         v_double_arrow \
>> +       wait \
>>         watch \
>> +       whats_this \
>>         xterm
>>
>>  CURSOR_DIR = $(datadir)/icons/xcursor-transparent/cursors
>> --
>> 2.7.2
>>
>


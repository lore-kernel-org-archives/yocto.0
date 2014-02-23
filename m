Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40594E00723
	for <yocto@yoctoproject.org>; Sun, 23 Feb 2014 02:12:24 -0800 (PST)
Received: by mail-wg0-f49.google.com with SMTP id y10so3718555wgg.28
	for <yocto@yoctoproject.org>; Sun, 23 Feb 2014 02:12:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=FAAcBry0V8/nOGsgF3rr0dvkysAcsp1ElUragHeT8oI=;
	b=dMJuAvOCPxRMyUaj1IWewsF+V04eJ6k2nNl1Zvyuysri7ofyKCOF5km/J0z3miz2yM
	1f3j2VM16gpQNXafsnfwhgUv1YnUEpqS+XXoVrJH7G5UZ+L5mSU3Q0fOxQkmjveZoqjz
	OaeOv+1CZb1u8W1hrmU5vGXO2mtxACpreGSsTw9gQMkQlnrnY38+6cU2J3uqe2xiwhvS
	QJGBO+Qro5NgNwRBHwM7dXhr9zrYpsW8nxB4dKE78qdDJm+opmGvpZbHXOTt1o9nQ8Kf
	puT0ZU9ZCeb9Zg0F1005Y/q+cdRDOGgWXjekLTL8qQrWxTN6butq4WNhq9ybcXziClh+
	ymvg==
X-Gm-Message-State: ALoCoQnEmf91JEatr1UqGFUosnzAZ6auTauc6nM2XfNHugqwpOc6yhj/xwwIw2oWh1X9etM8CFJo
X-Received: by 10.180.149.206 with SMTP id uc14mr9755126wib.10.1393150342962; 
	Sun, 23 Feb 2014 02:12:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Sun, 23 Feb 2014 02:12:02 -0800 (PST)
X-Originating-IP: [5.13.237.95]
In-Reply-To: <CAMKF1spWN_GULSy=czevqncft0w4GE72rR_DSNMrC_XiwGLH1Q@mail.gmail.com>
References: <1392978548-31880-1-git-send-email-andrei@gherzan.ro>
	<1392978548-31880-7-git-send-email-andrei@gherzan.ro>
	<CAMKF1spWN_GULSy=czevqncft0w4GE72rR_DSNMrC_XiwGLH1Q@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 23 Feb 2014 12:12:02 +0200
Message-ID: <CAK18fxFk7QvS08rCG49-C6JSQvKDx9si1ghbvcMCdTPAS7Z5Dg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 7/7] omxplayer: Update to current remote HEAD
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
X-List-Received-Date: Sun, 23 Feb 2014 10:12:27 -0000
Content-Type: multipart/alternative; boundary=001a11c380084fb54e04f310174f

--001a11c380084fb54e04f310174f
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Feb 21, 2014 at 9:00 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Feb 21, 2014 at 2:29 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > -PR = "r3"
> > +PR = "r4"
>
> Do you still need this ?
>

Indeed no. Thanks.

--
ag

--001a11c380084fb54e04f310174f
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><br><div class="gmail_extra"><br><br><div class="gmail_quote">On Fri, Feb 21, 2014 at 9:00 PM, Khem Raj <span dir="ltr">&lt;<a href="mailto:raj.khem@gmail.com" target="_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>


<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>On Fri, Feb 21, 2014 at 2:29 AM, Andrei Gherzan &lt;<a href="mailto:andrei@gherzan.ro" target="_blank">andrei@gherzan.ro</a>&gt; wrote:<br>



&gt; -PR = &quot;r3&quot;<br>
&gt; +PR = &quot;r4&quot;<br>
<br>
</div>Do you still need this ?<br>
</blockquote></div><br>Indeed no. Thanks.<br clear="all"><div><br></div>--</div><div class="gmail_extra">ag
</div></div>

--001a11c380084fb54e04f310174f--

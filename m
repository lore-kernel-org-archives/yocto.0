Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 899EEE008CA; Mon, 23 Feb 2015 05:44:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
Received: from mail-qc0-f172.google.com (mail-qc0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DADF0E00746
	for <yocto@yoctoproject.org>; Mon, 23 Feb 2015 05:44:00 -0800 (PST)
Received: by qcvs11 with SMTP id s11so10941502qcv.11
	for <yocto@yoctoproject.org>; Mon, 23 Feb 2015 05:44:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=TyGNaZDdgImLDL70ug3icCJT/nV7vlfth8JPm/h6yb0=;
	b=fLfOOEAOjIMLuhKoWs4Dbi05Rrz3gMKgHAfiUmMvwoRC6m0j5E27gkbFABYLJqEJCH
	btBHekrOBn3Dfr8FSCwxD/75tnAhAtnPvnl+H/8moXKtHiLB63uekszVya3MZgIgQ3Wl
	lZmokrcQEoi5pwPgyxvIjYUOlZLUzvei/5/dK3hwdYes9XqKk5vVVZn18EOEuhJNdyoh
	bHA3knOV6w6vX8ALbcNmAXvPjUAOFt2eXoGLBD9G0kah6Q55+4hOMnwDwFiOWVhb9l5h
	t+C09eHcotLinbjEdNyiqHUj7WmlfO987lFPjwWtx6ScKxDKShDoDvNKvEGvv1hXfW4+
	aJXw==
X-Gm-Message-State: ALoCoQk7emyTJyEAwa41mq1ohryoCImWFPPN4AYhvBAJpDWcnYNoYjTjj4xehIixBSWMF1us8Qu8
X-Received: by 10.140.101.22 with SMTP id t22mr24350803qge.9.1424699040384;
	Mon, 23 Feb 2015 05:44:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Mon, 23 Feb 2015 05:43:40 -0800 (PST)
In-Reply-To: <b94b4f53e118cc42e827d035d2640560@technux.se>
References: <1407931139-4286-1-git-send-email-sujith.h@gmail.com>
	<b94b4f53e118cc42e827d035d2640560@technux.se>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Feb 2015 13:43:40 +0000
Message-ID: <CAJTo0Lbb_jQjTC_C9Mu6QJvcHmSpmW46v4waG2vOcfRkL_WYTA@mail.gmail.com>
To: petter@technux.se
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [psplash][PATCH] Adding support for systemd and its service files
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
X-List-Received-Date: Mon, 23 Feb 2015 13:44:03 -0000
Content-Type: multipart/alternative; boundary=001a11c16ffa36e238050fc19835

--001a11c16ffa36e238050fc19835
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Petter,

On 22 February 2015 at 21:20, Petter Mab=C3=A4cker <petter@technux.se> wrot=
e:

> Anyone who knows what happened with this change? Any problem detected? I
> was looking into adding support for systemd in psplash and found this old
> changeset that is not included in the psplash repo yet.
>
>
I dropped the ball on testing it.  Last time I looked systemd pretty much
assumed that plymouth was being used.  If you can verify that this patch
set is right, then that's awesome.

Ross

--001a11c16ffa36e238050fc19835
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Petter,</div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On 22 February 2015 at 21:20, Pe=
tter Mab=C3=A4cker <span dir=3D"ltr">&lt;<a href=3D"mailto:petter@technux.s=
e" target=3D"_blank">petter@technux.se</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><p>Anyone who knows what happened with this change? Any=
 problem detected? I was looking into adding support for systemd in psplash=
 and found this old changeset that is not included in the psplash repo yet.=
</p>
<p></p></blockquote></div><br>I dropped the ball on testing it.=C2=A0 Last =
time I looked systemd pretty much assumed that plymouth was being used.=C2=
=A0 If you can verify that this patch set is right, then that&#39;s awesome=
.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross=
</div></div>

--001a11c16ffa36e238050fc19835--

Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F578E00BA0; Mon, 11 Jan 2016 02:10:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5CDBE00B88
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 02:09:51 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id u188so25480791wmu.0
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 02:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=NxCO1oYekYMplJxILd79rf2P/8iVTeEyQKnl3CW7TF8=;
	b=n57PKLrv9/WZbY8jQnrU+ylZwLYqdyJmB23zFmjz86W0/EAhFAjUeCJ1VQKxnlD80u
	OTa1eP6+SABaBD6FUeph1dhbt2Hf96mLrLip3jy7ZM9nEgtMHOjGwtUAVitxUyw42USQ
	6E2nKh1fo0g9V/BBQJqjaJi5xjl8VqB/NFJS4gbJhm9EKcL2ciGBdXkFZB82G1X704L3
	aJumnZ7t8Ufwll4MnnM0Ty1vht6JN+R74WDvbNaU6g1dcnP1nZm1FUGYUyIvi0PoHToz
	Nxhm01+2qWxxqwj0CLnDIOcQRo7/pHuIxJrCm/ejssE4MXt80nO0ilbB+TpNlm2USZGO
	b+Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=NxCO1oYekYMplJxILd79rf2P/8iVTeEyQKnl3CW7TF8=;
	b=bhzp1hSxHr+wbiLB8dqoHuKSXeC2EJ4arl1sBPbf1C0FCs5mFpt8fuLQdW72+eHhPQ
	gq93QA3gwLNGpXiagXE+qRtzeVz64eyr8jsYgqhtn7gk8s7XvyPvsbPEKgwlpIJcG68x
	QmH2gyO05q0R4ynY1d3v6ukzvonze+b62j6BSJyuJFHegppa9A1gObbZH7czTw1WjxkM
	yIv7B+zkLRONsVOWugLdycb770NSe5theD5Vfo491/YVtm1SQDmeQy/v/+7xntO7PnKX
	oWWVxcvhsWHa1R4mv1K3qi5YdCAz+9gBT1nL+R0clozCnCa7yghHPx4j9QgaQnqGYrRb
	cRcQ==
X-Gm-Message-State: ALoCoQn5c3pBQC+nwlsU8XpZOWKM8rfIhU2EUpKD5ppyt2RPqdJ2fwwamdtUt7/9nen5g+eeonHcBv+O1FEMwwXBAeivrFcTrw==
X-Received: by 10.194.222.135 with SMTP id qm7mr133722277wjc.106.1452506990742;
	Mon, 11 Jan 2016 02:09:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.129.200 with HTTP; Mon, 11 Jan 2016 02:09:11 -0800 (PST)
X-Originating-IP: [178.7.64.118]
In-Reply-To: <1450309374-1270-1-git-send-email-andrei@gherzan.ro>
References: <1450309374-1270-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 11 Jan 2016 11:09:11 +0100
Message-ID: <CAK18fxFJGM1WyLPkYE0UyE_N3aMn1+qKS11_gmNBVPYgQN8V9Q@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] raspberrypi0.conf: Add machine configuration for Raspberry Pi Zero
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
X-List-Received-Date: Mon, 11 Jan 2016 10:10:02 -0000
Content-Type: multipart/alternative; boundary=001a11c3aed63799bd05290c2338

--001a11c3aed63799bd05290c2338
Content-Type: text/plain; charset=UTF-8

On Thu, Dec 17, 2015 at 12:42 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  conf/machine/raspberrypi0.conf | 6 ++++++
>  1 file changed, 6 insertions(+)
>  create mode 100644 conf/machine/raspberrypi0.conf
>
> diff --git a/conf/machine/raspberrypi0.conf
> b/conf/machine/raspberrypi0.conf
> new file mode 100644
> index 0000000..58468ed
> --- /dev/null
> +++ b/conf/machine/raspberrypi0.conf
> @@ -0,0 +1,6 @@
> +#@TYPE: Machine
> +#@NAME: RaspberryPi Zero Development Board
> +#@DESCRIPTION: Machine configuration for the RaspberryPi Zero board (
> https://www.raspberrypi.org/blog/raspberry-pi-zero)
> +
> +MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
> +include conf/machine/raspberrypi.conf
>
>
Merged to master.

--
Andrei Gherzan

--001a11c3aed63799bd05290c2338
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br>
<br><div class=3D"gmail_quote">On Thu, Dec 17, 2015 at 12:42 AM, Andrei Ghe=
rzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_=
blank">andrei@gherzan.ro</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-lef=
t-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">Signed-o=
ff-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherz=
an.ro</a>&gt;<br>
---<br>
=C2=A0conf/machine/raspberrypi0.conf | 6 ++++++<br>
=C2=A01 file changed, 6 insertions(+)<br>
=C2=A0create mode 100644 conf/machine/raspberrypi0.conf<br>
<br>
diff --git a/conf/machine/raspberrypi0.conf b/conf/machine/raspberrypi0.con=
f<br>
new file mode 100644<br>
index 0000000..58468ed<br>
--- /dev/null<br>
+++ b/conf/machine/raspberrypi0.conf<br>
@@ -0,0 +1,6 @@<br>
+#@TYPE: Machine<br>
+#@NAME: RaspberryPi Zero Development Board<br>
+#@DESCRIPTION: Machine configuration for the RaspberryPi Zero board (<a hr=
ef=3D"https://www.raspberrypi.org/blog/raspberry-pi-zero" rel=3D"noreferrer=
" target=3D"_blank">https://www.raspberrypi.org/blog/raspberry-pi-zero</a>)=
<br>
+<br>
+MACHINEOVERRIDES =3D &quot;raspberrypi:${MACHINE}&quot;<br>
+include conf/machine/raspberrypi.conf<br><span class=3D""><font color=3D"#=
888888"><br></font></span></blockquote><div><br></div><div>Merged to master=
.</div><div><br></div><div>--</div><div>Andrei Gherzan=C2=A0</div></div><br=
></div></div>

--001a11c3aed63799bd05290c2338--

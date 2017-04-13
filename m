Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B747DE00B27; Thu, 13 Apr 2017 15:56:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 702CDE00A16
	for <yocto@yoctoproject.org>; Thu, 13 Apr 2017 15:56:31 -0700 (PDT)
Received: by mail-qt0-f174.google.com with SMTP id v3so56633348qtd.3
	for <yocto@yoctoproject.org>; Thu, 13 Apr 2017 15:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9oPqiAdPAYJQyPDeWti9TsOnPJSjNT+kWRj1U7pNR7g=;
	b=ZdaG3c1VUFXMFTuEZ8afYkBuoO2c+GiOxpEKW607qq9bEiYAj3QLXlEbdjGOGOMFFT
	LFlkbc74UJKKhlUooRpdnfmpeSpeXY3+9DfHKoDCjeSTC1B5gkzXRdOAfxgGnMkiZSnS
	iGg4kzQczqq0Svbw4+/UZST4oAJrN9++C9vnJWWW8rpe8eT4U06HR6Zx8g5tEbpvzbUz
	QefkPjZUz64oA2U+JBd72W2jz/mgxetUPo7fF5/dgZpjSVoRDYBECI2HNPcRzMLPYhYk
	UTC2MMt3VzPuGNIzigIGXKulTd31cBzLBLoOBbleC8bSx9C6DD0LVy+6Ev8SiWKl4VKG
	oJ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9oPqiAdPAYJQyPDeWti9TsOnPJSjNT+kWRj1U7pNR7g=;
	b=MKto8ueFMhkmV4mTnMgMI7wUn2/AxaDs4jc6KbEqLqp0OjSpKhB08JPM/ggezDM/Dp
	+6uOaVKkzTh97hMKZyRI+k0DlQIipurRjhp7YMnEV7QpIIn1pab+NyNNHbk9wIHYU99w
	Nw2i7+qcAvFKFppz0ERCGvMVN09EUnoGWfyJeADsxLp6O/JCSChV2OG3WXnKZINO3a7x
	a2HyDNlYDDCJDHQKtXo3OqKdKpikKeja4k8sliiWFB/oUIyozSGEtKf+9MWVv425LJ99
	MuA7D0mAVjXSUAzCqRXz05JnZY3V/Wu9wBolFt9054RUARpjrnk4k7zGrRDkacw6ATrQ
	kcjg==
X-Gm-Message-State: AN3rC/48yUjq8rmRm5BeTbefzYRCH6BR7F4MXPpReLvkKSPmi3oDeBj5
	d21p9kSizrZrQsuphXdhT/tWBzq2tgpI
X-Received: by 10.237.43.69 with SMTP id p63mr4690523qtd.68.1492124190904;
	Thu, 13 Apr 2017 15:56:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Thu, 13 Apr 2017 15:56:10 -0700 (PDT)
In-Reply-To: <20170413074250.12957-1-romain.perier@collabora.com>
References: <20170413074250.12957-1-romain.perier@collabora.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Apr 2017 23:56:10 +0100
Message-ID: <CAJTo0Lbn+y0d1rZHXPDuKwnvfK5MAxnAP3gC2fWWV6CnYhh=JQ@mail.gmail.com>
To: Romain Perier <romain.perier@collabora.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH v3] logrotate: Add systemd support
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
X-List-Received-Date: Thu, 13 Apr 2017 22:56:41 -0000
Content-Type: multipart/alternative; boundary=94eb2c124cc45c1fbb054d143cb7

--94eb2c124cc45c1fbb054d143cb7
Content-Type: text/plain; charset=UTF-8

On 13 April 2017 at 08:42, Romain Perier <romain.perier@collabora.com>
wrote:

> --- /dev/null
> +++ b/meta/recipes-extended/logrotate/logrotate/logrotate.service
> @@ -0,0 +1,10 @@
> +[Unit]
> +Description=Rotate log files
> +ConditionACPower=true
> +
> +[Service]
> +Type=oneshot
> +ExecStart=/usr/sbin/logrotate /etc/logrotate.conf
>

Hard-coding these paths breaks anyone who wants to change them, use symbols
and replace them at build time.


> +SYSTEMD_AUTO_ENABLE = "disable"
>

What's the rationale for disabling logrotate by default?  The cron script
in the sysv case isn't disabled out of the box from what I can tell, so
that's a behavioural change based on init.


> +LOGROTATE_SYSTEMD_TIMER_BASIS ?= "daily"
> +LOGROTATE_SYSTEMD_TIMER_ACCURACY ?= "12h"
>

Do these really need to be variables in the recipe?

+    # Install systemd unit files
> +    if [ "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd',
> '', d)}" = "systemd" ]; then
> +        install -d ${D}${systemd_system_unitdir}
> +        install -m 0644 ${WORKDIR}/logrotate.service
> ${D}${systemd_system_unitdir}/logrotate.service
> +        install -m 0644 ${WORKDIR}/logrotate.timer
> ${D}${systemd_system_unitdir}/logrotate.timer
> +        sed -i -e 's,OnCalendar=.*$,OnCalendar=${LOGROTATE_SYSTEMD_TIMER_BASIS},g'
> ${D}${systemd_system_unitdir}/logrotate.timer
> +        sed -i -e 's,AccuracySec=.*$,AccuracySec=${LOGROTATE_SYSTEMD_TIMER_ACCURACY},g'
> ${D}${systemd_system_unitdir}/logrotate.timer
> +    else
> +        mkdir -p ${D}${sysconfdir}/cron.daily
> +        install -p -m 0755 examples/logrotate.cron
> ${D}${sysconfdir}/cron.daily/logrotate
> +    fi
>

This breaks if the DISTRO_FEATURES contains both sysvinit and systemd (so
packages should contain the systemd and sysv integration), and different
images are generated that use either sysvinit or systemd.  With this the
cron hooks won't be added but if the package is used under sysv they'll be
needed.

Not that I have a good idea for how to solve this.  Maybe the cron should
check the timer unit isn't running?

Ross

--94eb2c124cc45c1fbb054d143cb7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 13 April 2017 at 08:42, Romain Perier <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:romain.perier@collabora.com" target=3D"_blank">romai=
n.perier@collabora.com</a>&gt;</span> wrote:<div class=3D"gmail_extra"><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
--- /dev/null<br>
+++ b/meta/recipes-extended/<wbr>logrotate/logrotate/logrotate.<wbr>service=
<br>
@@ -0,0 +1,10 @@<br>
+[Unit]<br>
+Description=3DRotate log files<br>
+ConditionACPower=3Dtrue<br>
+<br>
+[Service]<br>
+Type=3Doneshot<br>
+ExecStart=3D/usr/sbin/logrotate /etc/logrotate.conf<br></blockquote><div><=
br></div><div>Hard-coding these paths breaks anyone who wants to change the=
m, use symbols and replace them at build time.</div><div>=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">+SYSTEMD_AUTO_ENABLE =3D &quot;disable&quot;<br></=
blockquote><div><br></div><div>What&#39;s the rationale for disabling logro=
tate by default?=C2=A0 The cron script in the sysv case isn&#39;t disabled =
out of the box from what I can tell, so that&#39;s a behavioural change bas=
ed on init.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">+LOGROTA=
TE_SYSTEMD_TIMER_BASIS ?=3D &quot;daily&quot;<br>
+LOGROTATE_SYSTEMD_TIMER_<wbr>ACCURACY ?=3D &quot;12h&quot;<br></blockquote=
><div><br></div><div>Do these really need to be variables in the recipe?</d=
iv><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">+=C2=A0 =C2=A0 # Install s=
ystemd unit files<br>
+=C2=A0 =C2=A0 if [ &quot;${@bb.utils.contains(&#39;DISTRO_<wbr>FEATURES&#3=
9;, &#39;systemd&#39;, &#39;systemd&#39;, &#39;&#39;, d)}&quot; =3D &quot;s=
ystemd&quot; ]; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${systemd_system_unitdir}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/logrotate.service $=
{D}${systemd_system_unitdir}/<wbr>logrotate.service<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/logrotate.timer ${D=
}${systemd_system_unitdir}/<wbr>logrotate.timer<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 sed -i -e &#39;s,OnCalendar=3D.*$,OnCalendar=
=3D$<wbr>{LOGROTATE_SYSTEMD_TIMER_<wbr>BASIS},g&#39; ${D}${systemd_system_u=
nitdir}/<wbr>logrotate.timer<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 sed -i -e &#39;s,AccuracySec=3D.*$,<wbr>Accura=
cySec=3D${LOGROTATE_<wbr>SYSTEMD_TIMER_ACCURACY},g&#39; ${D}${systemd_syste=
m_unitdir}/<wbr>logrotate.timer<br>
+=C2=A0 =C2=A0 else<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 mkdir -p ${D}${sysconfdir}/cron.daily<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -p -m 0755 examples/logrotate.cron ${D=
}${sysconfdir}/cron.daily/<wbr>logrotate<br>
+=C2=A0 =C2=A0 fi<br></blockquote><div><br></div><div>This breaks if the DI=
STRO_FEATURES contains both sysvinit and systemd (so packages should contai=
n the systemd and sysv integration), and different images are generated tha=
t use either sysvinit or systemd.=C2=A0 With this the cron hooks won&#39;t =
be added but if the package is used under sysv they&#39;ll be needed.</div>=
<div><br></div><div>Not that I have a good idea for how to solve this.=C2=
=A0 Maybe the cron should check the timer unit isn&#39;t running?</div><div=
><br></div><div>Ross</div></div></div></div>

--94eb2c124cc45c1fbb054d143cb7--

Return-Path: <aaron.schwartz@logicsupply.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1FFAE00D38; Fri, 28 Jul 2017 11:29:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.50 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA126E00BA2
	for <yocto@yoctoproject.org>; Fri, 28 Jul 2017 11:29:39 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id a9so140167666oih.0
	for <yocto@yoctoproject.org>; Fri, 28 Jul 2017 11:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=logicsupply.com; s=google-lscom;
	h=mime-version:from:date:message-id:subject:to;
	bh=pAGkdY0fpnjgAdPu6TsEYn5lch2WWvLOrEtvLm5dR9g=;
	b=UQgDbNPlYv2ZAEabJIS7zsW1MLst9a+tqR7E2cyx8lnZGfPsrW++8pdDWa0ho5NAs+
	N7I64XwXeWU7M/C2kq9b04cKXOhj1BXnKq7E0MH7U49RJdqgw6HDWp4/uJyXspRtjehm
	yvbYheWJA+N5/7e4abyUbMnAwHVs2S58GgC5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=pAGkdY0fpnjgAdPu6TsEYn5lch2WWvLOrEtvLm5dR9g=;
	b=ZGTP1mGPGsdqkY1QJtYhyMUcDVVXiTvcV9tTYQugpj/MZrE3RgbWXjh8hiMPBu1BRs
	XosujFeuGYtRany48BjoZfIdeeExhcniulCQ+WbiXscCGWpiOvjWZB4El5IETB7eG+d8
	gBBUOaD415dOq54QxJg72mQswLaFYh9nWjFaabBLqIoIZlOW4SwdSXEOFOwzht9anW6T
	LI8AemP4j8HI1ZkUUxa6wJ5bLCYy2iI2a5Opy5Qo+FWvnIt0jfQHaDmkxOOHyk8f7TK7
	tiZKPtA2KN8xu3ye2QC/Vf4C8UYSmsUErYVjjpWuYJ8d/Bv2oVh6hzeqElkht1pKd791
	EM+w==
X-Gm-Message-State: AIVw1129prHookYSKLLBuAKDA1GCqtPqae+DhGwFWqcCGXWmDEWfUb8K
	1lw0q1rBw0TGzE9y5JSHHkJm78h8SlmJ8Ek1bA==
X-Received: by 10.202.117.68 with SMTP id q65mr8745002oic.140.1501266578796;
	Fri, 28 Jul 2017 11:29:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.87.131 with HTTP; Fri, 28 Jul 2017 11:29:38 -0700 (PDT)
From: Aaron Schwartz <aaron.schwartz@logicsupply.com>
Date: Fri, 28 Jul 2017 14:29:38 -0400
Message-ID: <CAP3gWc8hoOW-gehwwfjvDH9NDyby2HSSzREWtSffwAo_t19JrQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to have Poky automatically login at boot?
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
X-List-Received-Date: Fri, 28 Jul 2017 18:29:40 -0000
Content-Type: multipart/alternative; boundary="001a1137d4de249222055564dde1"

--001a1137d4de249222055564dde1
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to have the busybox getty in Poky login as root automatically
but I can't seem to get it working.

So far I have a sysvinit-inittab_2.%.bbappend:

> PR := "${PR}.1"
> SYSVINIT_ENABLED_GETTYS="1 2 3 4"
> do_install() {
>     install -d ${D}${sysconfdir}
>     install -m 0644 ${WORKDIR}/inittab ${D}${sysconfdir}/inittab
>     install -d ${D}${base_bindir}
>     install -m 0755 ${WORKDIR}/start_getty ${D}${base_bindir}/start_getty
>     set -x
>     tmp="${SERIAL_CONSOLES}"
>     for i in $tmp
>     do
> j=`echo ${i} | sed s/\;/\ /g`
> l=`echo ${i} | sed -e 's/tty//' -e 's/^.*;//' -e 's/;.*//'`
> label=`echo $l | sed 's/.*\(....\)/\1/'`
> echo "$label:12345:respawn:${base_bindir}/start_getty ${j} vt102" >>
> ${D}${sysconfdir}/inittab
>     done
>     if [ "${USE_VT}" = "1" ]; then
>         cat <<EOF >>${D}${sysconfdir}/inittab
> # ${base_sbindir}/getty invocations for the runlevels.
> #
> # The "id" field MUST be the same as the last
> # characters of the device (after "tty").
> #
> # Format:
> #  <id>:<runlevels>:<action>:<process>
> #
> EOF
>         for n in ${SYSVINIT_ENABLED_GETTYS}
>         do
>             echo "$n:12345:respawn:${base_sbindir}/mingetty --autologin
> root 38400 tty$n" >> ${D}${sysconfdir}/inittab
>         done
>         echo "" >> ${D}${sysconfdir}/inittab
>     fi
> }


I have tried a number of flags with the default getty, including using a
shell as login.  I tried adding mingetty to my image to see if that would
work with it's "--autologin" flag, but I still got the busybox getty
yelling at me about unrecognized flags.

Is the best approach to adjust the ALTERNATIVE_PRIORITY for either the
busybox getty or mingetty to have update-alternatives select mingetty, or
is there an easier modification to my sysvinit-innittab bbappend above that
will enable autologin?

Thanks for the help!
Aaron

--001a1137d4de249222055564dde1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m trying to have the busyb=
ox getty in Poky login as root automatically but I can&#39;t seem to get it=
 working.</div><div><br></div><div>So far I have a sysvinit-inittab_2.%.bba=
ppend:</div><div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">PR :=3D =
&quot;${PR}.1&quot;<br>SYSVINIT_ENABLED_GETTYS=3D&quot;1 2 3 4&quot;<br>do_=
install() {<br>=C2=A0 =C2=A0 install -d ${D}${sysconfdir}<br>=C2=A0 =C2=A0 =
install -m 0644 ${WORKDIR}/inittab ${D}${sysconfdir}/inittab<br>=C2=A0 =C2=
=A0 install -d ${D}${base_bindir}<br>=C2=A0 =C2=A0 install -m 0755 ${WORKDI=
R}/start_getty ${D}${base_bindir}/start_getty<br>=C2=A0 =C2=A0 set -x<br>=
=C2=A0 =C2=A0 tmp=3D&quot;${SERIAL_CONSOLES}&quot;<br>=C2=A0 =C2=A0 for i i=
n $tmp<br>=C2=A0 =C2=A0 do<br><span style=3D"white-space:pre">	</span>j=3D`=
echo ${i} | sed s/\;/\ /g`<br><span style=3D"white-space:pre">	</span>l=3D`=
echo ${i} | sed -e &#39;s/tty//&#39; -e &#39;s/^.*;//&#39; -e &#39;s/;.*//&=
#39;`<br><span style=3D"white-space:pre">	</span>label=3D`echo $l | sed &#3=
9;s/.*\(....\)/\1/&#39;`<br><span style=3D"white-space:pre">	</span>echo &q=
uot;$label:12345:respawn:${base_bindir}/start_getty ${j} vt102&quot; &gt;&g=
t; ${D}${sysconfdir}/inittab<br>=C2=A0 =C2=A0 done<br>=C2=A0 =C2=A0 if [ &q=
uot;${USE_VT}&quot; =3D &quot;1&quot; ]; then<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 cat &lt;&lt;EOF &gt;&gt;${D}${sysconfdir}/inittab<br># ${base_sbindir}/=
getty invocations for the runlevels.<br>#<br># The &quot;id&quot; field MUS=
T be the same as the last<br># characters of the device (after &quot;tty&qu=
ot;).<br>#<br># Format:<br># =C2=A0&lt;id&gt;:&lt;runlevels&gt;:&lt;action&=
gt;:&lt;process&gt;<br>#<br>EOF<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for n in ${S=
YSVINIT_ENABLED_GETTYS}<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 do<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;$n:12345:respawn:${base_sbindir}/min=
getty --autologin root 38400 tty$n&quot; &gt;&gt; ${D}${sysconfdir}/inittab=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 done<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &q=
uot;&quot; &gt;&gt; ${D}${sysconfdir}/inittab<br>=C2=A0 =C2=A0 fi<br>}</blo=
ckquote><div><br></div><div>I have tried a number of flags with the default=
 getty, including using a shell as login.=C2=A0 I tried adding mingetty to =
my image to see if that would work with it&#39;s &quot;--autologin&quot; fl=
ag, but I still got the busybox getty yelling at me about unrecognized flag=
s.</div><div><br></div><div>Is the best approach to adjust the=C2=A0ALTERNA=
TIVE_PRIORITY for either the busybox getty or mingetty to have update-alter=
natives select mingetty, or is there an easier modification to my sysvinit-=
innittab bbappend above that will enable autologin?</div><div><br></div><di=
v>Thanks for the help!</div><div>Aaron</div>
</div></div>

--001a1137d4de249222055564dde1--

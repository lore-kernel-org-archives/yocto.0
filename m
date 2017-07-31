Return-Path: <aaron.schwartz@logicsupply.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2526CE00C2B; Mon, 31 Jul 2017 07:38:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, MISSING_HEADERS,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.43 listed in dnsbl.sorbs.net]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B925E00C2C
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 07:37:59 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id x3so181070749oia.1
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 07:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=logicsupply.com; s=google-lscom;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc; 
	bh=lvYpvNtwL8sV0GzH2cBcGiRTir9kyPuRHjoeGgnL5d4=;
	b=gdfMw8xM1ABalR5zfzbH6lC4N8uQumfsYKBs5fXETtsEOHdKQ+fCzD1z6sEBBLVbxE
	o+QLsgZeSBkInNOhFd4j57beHTRNg5P1SmCG9B6JTwzaCxpbympiecPcbtrt8QTjzVaq
	e1rEwCysbnjbpaI39WJtArzHRiNfr/BorDjGU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:cc;
	bh=lvYpvNtwL8sV0GzH2cBcGiRTir9kyPuRHjoeGgnL5d4=;
	b=C+QJYFS7C6h0kGYxvCQWnkOq0NIpb7BSWG5Gd74rz13GJXCBV/QdudFCOqCk9xjMuI
	7ldQiz6rDVI+AaMk+ZOb+wQKS+549NVSyAGvCYR4Cp5v362Xa6Vrx5Pq9t3kfqJMg/+F
	wbjWiIMHW8XCEGF31GTofDDSi5Y6lfQaI0Gfb1PUh9/AhgfhVKPb24oAgz6wQZ7QEMpp
	Ix/OpBeOQ6rDQ5IPZ4/3eNNYXuN9MMsg4ZazkDkIo/PDTLftejpjqb0wtPGFnDdsK76h
	cpio+6IYVaNEFJUU3j+sPqmRmM8c+z4934UazGqGPWGIcgIbquJtCcw1oNzdZyqLPsj/
	Hv/g==
X-Gm-Message-State: AIVw1111Sp16vIVDyjHwMD+7/8hSBtFWAt7sRbjnupLLR21R3np+MPeQ
	dfBFVGsvEqLa+ozyJBNcWDRR0yxFe7eKoRA=
X-Received: by 10.202.106.67 with SMTP id f64mr16673793oic.85.1501511878629;
	Mon, 31 Jul 2017 07:37:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.87.131 with HTTP; Mon, 31 Jul 2017 07:37:58 -0700 (PDT)
In-Reply-To: <CAJ86T=WceG6KAej8=ty7Ratz9Q-AN9TgNnNX4a_FMRUUaemvgg@mail.gmail.com>
References: <CAP3gWc8hoOW-gehwwfjvDH9NDyby2HSSzREWtSffwAo_t19JrQ@mail.gmail.com>
	<CAJ86T=WceG6KAej8=ty7Ratz9Q-AN9TgNnNX4a_FMRUUaemvgg@mail.gmail.com>
From: Aaron Schwartz <aaron.schwartz@logicsupply.com>
Date: Mon, 31 Jul 2017 10:37:58 -0400
Message-ID: <CAP3gWc9CaR4gcsPrj392rsLB_VkFyMfk=zMrryZX8acFv6Xb-Q@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to have Poky automatically login at boot?
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
X-List-Received-Date: Mon, 31 Jul 2017 14:38:01 -0000
Content-Type: multipart/alternative; boundary="001a1141b68826f4de05559dfa25"

--001a1141b68826f4de05559dfa25
Content-Type: text/plain; charset="UTF-8"

Good tip Andre!

Just adding 'auto-serial-console' to IMAGE_INSTALL results in openvt
complaining that VT1 is already in use and then the user is presented with
the regular login.  It looks like I'll be able to make this work once I
figure out how to disable whatever's claiming that vty, though.

Thanks for the help

On Fri, Jul 28, 2017 at 8:32 PM, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Fri, Jul 28, 2017 at 11:29 AM, Aaron Schwartz
> <aaron.schwartz@logicsupply.com> wrote:
> > Hello,
> >
> > I'm trying to have the busybox getty in Poky login as root automatically
> but
> > I can't seem to get it working.
>
> This may be a possible solution:
>
>   https://git.linaro.org/openembedded/meta-linaro.git/
> tree/meta-linaro/recipes-linaro/auto-serial-console/
> auto-serial-console_0.1.bb
>
> > So far I have a sysvinit-inittab_2.%.bbappend:
> >>
> >> PR := "${PR}.1"
> >> SYSVINIT_ENABLED_GETTYS="1 2 3 4"
> >> do_install() {
> >>     install -d ${D}${sysconfdir}
> >>     install -m 0644 ${WORKDIR}/inittab ${D}${sysconfdir}/inittab
> >>     install -d ${D}${base_bindir}
> >>     install -m 0755 ${WORKDIR}/start_getty
> ${D}${base_bindir}/start_getty
> >>     set -x
> >>     tmp="${SERIAL_CONSOLES}"
> >>     for i in $tmp
> >>     do
> >> j=`echo ${i} | sed s/\;/\ /g`
> >> l=`echo ${i} | sed -e 's/tty//' -e 's/^.*;//' -e 's/;.*//'`
> >> label=`echo $l | sed 's/.*\(....\)/\1/'`
> >> echo "$label:12345:respawn:${base_bindir}/start_getty ${j} vt102" >>
> >> ${D}${sysconfdir}/inittab
> >>     done
> >>     if [ "${USE_VT}" = "1" ]; then
> >>         cat <<EOF >>${D}${sysconfdir}/inittab
> >> # ${base_sbindir}/getty invocations for the runlevels.
> >> #
> >> # The "id" field MUST be the same as the last
> >> # characters of the device (after "tty").
> >> #
> >> # Format:
> >> #  <id>:<runlevels>:<action>:<process>
> >> #
> >> EOF
> >>         for n in ${SYSVINIT_ENABLED_GETTYS}
> >>         do
> >>             echo "$n:12345:respawn:${base_sbindir}/mingetty --autologin
> >> root 38400 tty$n" >> ${D}${sysconfdir}/inittab
> >>         done
> >>         echo "" >> ${D}${sysconfdir}/inittab
> >>     fi
> >> }
> >
> >
> > I have tried a number of flags with the default getty, including using a
> > shell as login.  I tried adding mingetty to my image to see if that would
> > work with it's "--autologin" flag, but I still got the busybox getty
> yelling
> > at me about unrecognized flags.
> >
> > Is the best approach to adjust the ALTERNATIVE_PRIORITY for either the
> > busybox getty or mingetty to have update-alternatives select mingetty,
> or is
> > there an easier modification to my sysvinit-innittab bbappend above that
> > will enable autologin?
> >
> > Thanks for the help!
> > Aaron
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>



-- 

Aaron Schwartz
Production
Logic Supply
Direct: +1 802 861 2300 Ext. 530
Main: +1 802 861 2300
www.logicsupply.com

Google+ <https://plus.google.com/+Logicsupply/posts> | Twitter
<https://twitter.com/logicsupply> | LinkedIn
<https://www.linkedin.com/company/logic-supply> | YouTube
<https://www.youtube.com/user/logicsupply>

--001a1141b68826f4de05559dfa25
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good tip Andre!<div><br></div><div>Just adding &#39;auto-s=
erial-console&#39; to IMAGE_INSTALL results in openvt complaining that VT1 =
is already in use and then the user is presented with the regular login.=C2=
=A0 It looks like I&#39;ll be able to make this work once I figure out how =
to disable whatever&#39;s claiming that vty, though.</div><div><br></div><d=
iv>Thanks for the help</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Fri, Jul 28, 2017 at 8:32 PM, Andre McCurdy <span dir=
=3D"ltr">&lt;<a href=3D"mailto:armccurdy@gmail.com" target=3D"_blank">armcc=
urdy@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><spa=
n class=3D"">On Fri, Jul 28, 2017 at 11:29 AM, Aaron Schwartz<br>
&lt;<a href=3D"mailto:aaron.schwartz@logicsupply.com">aaron.schwartz@logics=
upply.<wbr>com</a>&gt; wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I&#39;m trying to have the busybox getty in Poky login as root automat=
ically but<br>
&gt; I can&#39;t seem to get it working.<br>
<br>
</span>This may be a possible solution:<br>
<br>
=C2=A0 <a href=3D"https://git.linaro.org/openembedded/meta-linaro.git/tree/=
meta-linaro/recipes-linaro/auto-serial-console/auto-serial-console_0.1.bb" =
rel=3D"noreferrer" target=3D"_blank">https://git.linaro.org/<wbr>openembedd=
ed/meta-linaro.git/<wbr>tree/meta-linaro/recipes-<wbr>linaro/auto-serial-co=
nsole/<wbr>auto-serial-console_0.1.bb</a><br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; So far I have a sysvinit-inittab_2.%.bbappend:<br>
&gt;&gt;<br>
&gt;&gt; PR :=3D &quot;${PR}.1&quot;<br>
&gt;&gt; SYSVINIT_ENABLED_GETTYS=3D&quot;1 2 3 4&quot;<br>
&gt;&gt; do_install() {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0install -d ${D}${sysconfdir}<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0install -m 0644 ${WORKDIR}/inittab ${D}${syscon=
fdir}/inittab<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0install -d ${D}${base_bindir}<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0install -m 0755 ${WORKDIR}/start_getty ${D}${ba=
se_bindir}/start_getty<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0set -x<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0tmp=3D&quot;${SERIAL_CONSOLES}&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0for i in $tmp<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0do<br>
&gt;&gt; j=3D`echo ${i} | sed s/\;/\ /g`<br>
&gt;&gt; l=3D`echo ${i} | sed -e &#39;s/tty//&#39; -e &#39;s/^.*;//&#39; -e=
 &#39;s/;.*//&#39;`<br>
&gt;&gt; label=3D`echo $l | sed &#39;s/.*\(....\)/\1/&#39;`<br>
&gt;&gt; echo &quot;$label:12345:respawn:${base_<wbr>bindir}/start_getty ${=
j} vt102&quot; &gt;&gt;<br>
&gt;&gt; ${D}${sysconfdir}/inittab<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0done<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0if [ &quot;${USE_VT}&quot; =3D &quot;1&quot; ];=
 then<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cat &lt;&lt;EOF &gt;&gt;${D}${sys=
confdir}/inittab<br>
&gt;&gt; # ${base_sbindir}/getty invocations for the runlevels.<br>
&gt;&gt; #<br>
&gt;&gt; # The &quot;id&quot; field MUST be the same as the last<br>
&gt;&gt; # characters of the device (after &quot;tty&quot;).<br>
&gt;&gt; #<br>
&gt;&gt; # Format:<br>
&gt;&gt; #=C2=A0 &lt;id&gt;:&lt;runlevels&gt;:&lt;action&gt;:&lt;<wbr>proce=
ss&gt;<br>
&gt;&gt; #<br>
&gt;&gt; EOF<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for n in ${SYSVINIT_ENABLED_GETTY=
S}<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0do<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;$n:12345=
:respawn:${base_<wbr>sbindir}/mingetty --autologin<br>
&gt;&gt; root 38400 tty$n&quot; &gt;&gt; ${D}${sysconfdir}/inittab<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0done<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;&quot; &gt;&gt; ${D}${=
sysconfdir}/inittab<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0fi<br>
&gt;&gt; }<br>
&gt;<br>
&gt;<br>
&gt; I have tried a number of flags with the default getty, including using=
 a<br>
&gt; shell as login.=C2=A0 I tried adding mingetty to my image to see if th=
at would<br>
&gt; work with it&#39;s &quot;--autologin&quot; flag, but I still got the b=
usybox getty yelling<br>
&gt; at me about unrecognized flags.<br>
&gt;<br>
&gt; Is the best approach to adjust the ALTERNATIVE_PRIORITY for either the=
<br>
&gt; busybox getty or mingetty to have update-alternatives select mingetty,=
 or is<br>
&gt; there an easier modification to my sysvinit-innittab bbappend above th=
at<br>
&gt; will enable autologin?<br>
&gt;<br>
&gt; Thanks for the help!<br>
&gt; Aaron<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><p styl=
e=3D"color:#4c4c4c;font-family:Arial;font-size:13px">Aaron Schwartz<br> Pro=
duction<br> Logic Supply<br>Direct: +1 802 861 2300 Ext. 530 <br> Main:=C2=
=A0+1 802 861 2300<br> <a href=3D"http://www.logicsupply.com" target=3D"_bl=
ank">www.logicsupply.com</a></p><p style=3D"color:#4c4c4c;font-family:Arial=
;font-size:12px"><a href=3D"https://plus.google.com/+Logicsupply/posts" tar=
get=3D"_blank">Google+</a> | <a href=3D"https://twitter.com/logicsupply" ta=
rget=3D"_blank">Twitter</a> | <a href=3D"https://www.linkedin.com/company/l=
ogic-supply" target=3D"_blank">LinkedIn</a> | <a href=3D"https://www.youtub=
e.com/user/logicsupply" target=3D"_blank">YouTube</a></p></div>
</div>

--001a1141b68826f4de05559dfa25--

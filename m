Return-Path: <ma@telensa.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7BF9E00C4F; Tue, 29 Nov 2016 02:43:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.210.180 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f180.google.com (mail-wj0-f180.google.com
	[209.85.210.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E03E1E00C4F
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 02:42:56 -0800 (PST)
Received: by mail-wj0-f180.google.com with SMTP id qp4so141231891wjc.3
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 02:42:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telensa-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KD3qSbs191v8INnCAuPqDiC07pwMN56yHlO9jb5fCes=;
	b=J5wKDHTIcl+1m3gs4DEU/fBGGdeIKGsJQFpDTjK6zyOeRuE2bqXzD/AJj8o2DZHmmJ
	Y46io13Y+Xt/IepnAlU8TMqRJ+QFemmowaUTvlojk9scRU4Tj1nBtQp/qoBbmY4PMmNc
	s0/Kjb1IHWnxzx3w/2MFA2sFRSH71hZRs4iRLpP3bDy63A1O3LDQcy78jsWdIijE6NWK
	4g2sOouY1PgWe9riJnLgBvp+P11T8aC3R+yETz51BOQP5uipi7BthSORen2qWpil5ANb
	CcwjeP5/RaL5Jo08gqIl8/EzivQNwMD4RmDo+PhvGrgdBbAjcQGY5dn6Ly5AtzRlwREi
	szPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KD3qSbs191v8INnCAuPqDiC07pwMN56yHlO9jb5fCes=;
	b=fkzrfx2DpBCSejExK149QZWYLtYFmO40emF8344hLLWqsWAV9yXvqVOD2d2UHkT7kO
	uJpudmlK0t7eMH+8U3R8AwlZ/S90D+aMXoi1ew+dJ3A616eKMMR2G4AQWWGhRCCueuMw
	sSJkGhw/PjV3H0CRzkXxoTDBcFhkX4q3u6Ga5h5XDH7nbbvwTAZHvqfICU8xX4wVlMG6
	rkjMlesMke5G6B9JSfo9JCh6quSrNcNkI6yIvQ8CoDpFDAvDQ+7e2AG2IgDunW/BNlxE
	ncGo8MvZXDL8RxJbq9q+kprlORIEF/IjKtBQF7cF+Cur5Ej9vQeAT36KxZpUt7bJU+AP
	R1qw==
X-Gm-Message-State: AKaTC01Pm9V2g/jlVwpAOoj8HS8gxWaXCFxBBGjb+AU+6FfjAYqn6jJ7mAPxPiS3LPUtoInhq+0dv9jt/M+0B41g
X-Received: by 10.194.26.133 with SMTP id l5mr23122183wjg.4.1480416175968;
	Tue, 29 Nov 2016 02:42:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.157.195 with HTTP; Tue, 29 Nov 2016 02:42:55 -0800 (PST)
In-Reply-To: <63b4bb45-7ba8-f3c7-dd9d-8eb16f3a5e51@Net2Edge.com>
References: <63b4bb45-7ba8-f3c7-dd9d-8eb16f3a5e51@Net2Edge.com>
From: Miguel Aveiro <ma@telensa.com>
Date: Tue, 29 Nov 2016 10:42:55 +0000
Message-ID: <CAPZBU9YdVVzywLRFodp7JM7BbGWYzuvv1x9dFOWUFwUjUd6ZkQ@mail.gmail.com>
To: Thomas.Thorne@net2edge.com
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Recipe To Add 3 Script Files To /etc/ppp/peers/<provider-name>
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
X-List-Received-Date: Tue, 29 Nov 2016 10:43:02 -0000
Content-Type: multipart/alternative; boundary=089e0160a4d649f35605426e40e7

--089e0160a4d649f35605426e40e7
Content-Type: text/plain; charset=UTF-8

I think you might have already found an answer, but I don't think it's wise
to override the do_install method. Plus, you should also populate your
"${D}" folder, which is "${WORKDIR}/image"; instead of ${IMAGE_ROOTFS},
which is  "${WORKDIR}/rootfs". AFAIK, the way you're doing, the contents of
D will override what your do_intall put in IMAGE_ROOTFS during do_rootfs
phase.

This should work: create a bbappend recipe: ppp_2.4.%.bbappend (change to
the ppp version of your yocto build)


SRC_URI += "\
    file://ppp \
    file://chat-connect \
    file://chat-disconnect \
"

do_install_*append* () {
    install -d ${D}${sysconfdir}/ppp/peers
    install -m 0755 ${S}/<provider>-ppp ${D}${sysconfdir}/ppp/peers/
    install -m 0755 ${S}/<provider>-chat-connect ${D}${sysconfdir}/
ppp/peers/
    install -m 0755 ${S}/<provider>-chat-disconnect ${D}${sysconfdir}/
ppp/peers/
}

# Mark the files which are part of this package
FILES_${PN} += "${sysconfdir}/ppp/ \
                             ${sysconfdir}/ppp/peers/ \
                             ${sysconfdir}/ppp/peers/provider>-ppp \
                             ${sysconfdir}/ppp/peers/provider>-chat-connect
\
                             ${sysconfdir}/ppp/peers/
provider>-chat-disconnect\
"



Regards,


Miguel Aveiro | Software Engineer
+44 1799 533200
telensa.com <http://www.telensa.com/> | @telensa
<http://www.twitter.com/telensa> | Linkedin
<http://www.linkedin.com/company/telensa>


On 25 November 2016 at 11:26, Thomas A. F. Thorne MEng AUS MIET <
Thomas.Thorne@net2edge.com> wrote:

> I want to add 3 script files /ppp/peers/<provider-name>.  I am targeting a
> Raspberry Pi 3 but I would have though that adding non-compiled files to
> the root file-system was a fairly generic thing to do.
>
> Is there an example of how to do this somewhere?  Either a How To write up
> or an existing recipie that takes a set of text files and places them onto
> the target's rootfs.
>
>
> I must be missing something because I cannot get the file files onto the
> system.
> I tried using do_deploy, but that puts files into my ../tmp/deploy/images/raspberrypi3/etc/ppp/
> which would be helpful for scripts to aid in image deployment.  It is not
> what I want though as the scripts need to be on the target.
>
> Running a do_install() with or without a blank do_compile() has not
> resulted in things getting onto the target either.  Unless there is
> something about using ${sysconfdir} or ${IMAGE_ROOTFS} or ${S} or ${D} or
> ${DEPLOYDIR} or ${WORKDIR} which is particular to the Pi.  I'd provide an
> example of my script but having changed it so many times in the last two
> days there is not much worth of sharing just one iteration.
>
> Anything that resembles the following with;
>  ${IMAGE_ROOTFS} possibly substituted for ${D} or missing
>  do_install replaced with do_deploy.
> There are probably other permutations that I have tried.
>
> #
> # Copy the ppp script files for <vendor> chips to the target filesystem
> # These files are based on the details provided in
> #
>
> SUMMARY = "PPP Scripts for ..."
> SECTION = "net"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=
> 0835ade698e0bcf8506ecda2f7b4f302"
> DESCRIPTION = "A set of Linux PPP scripts blar blar"
>
> RDEPENDS_${PN} = "ppp"
>
> SRC_URI += "file://<provider>-ppp"
> SRC_URI += "file://<provider>-chat-connect"
> SRC_URI += "file://<provider>-chat-disconnect"
>
> S = "${WORKDIR}"
>
> #PACKAGES =+ "${PN} ${PN}-staticdev"
>
> #DEPLOYDIR = "${WORKDIR}/deploy-${PN}"
>
> #D = "${DEPLOYDIR}"
>
> inherit allarch
>
> # Install script on target's root file-system
> do_install () {
>     # Install init script and default settings
>     #install -d ${IMAGE_ROOTFS}${sysconfdir}
>     #install -d ${IMAGE_ROOTFS}${sysconfdir}/ppp/
>     install -d ${IMAGE_ROOTFS}${sysconfdir}/ppp/peers/
>     install -m 0755 ${S}/<provider>-ppp ${IMAGE_ROOTFS}${sysconfdir}/
> ppp/peers/
>     install -m 0755 ${S}/<provider>-chat-connect
> ${IMAGE_ROOTFS}${sysconfdir}/ppp/peers/
>     install -m 0755 ${S}/<provider>-chat-disconnect
> ${IMAGE_ROOTFS}${sysconfdir}/ppp/peers/
> }
>
> # Mark the files which are part of this package
> FILES_${PN} += "${sysconfdir}/ppp/"
> FILES_${PN} += "${sysconfdir}/ppp/peers/"
> FILES_${PN} += "${sysconfdir}/ppp/peers/<provider>-ppp"
> FILES_${PN} += "${sysconfdir}/ppp/peers/<provider>-chat-connect"
> FILES_${PN} += "${sysconfdir}/ppp/peers/<provider>-chat-disconnect"
>
>
>
> I can find a lot of helloworld.c and automate examples.  There must be
> some basic ones for adding scripts somewhere?  My googlefu is very weak, I
> blame a lingering cold.
>
> Any help will be very gratefully received.
> Regards,
>
> --
> Thomas A. F. Thorne MEng. AUS MIET
> *Software Engineer*
>
> *NET2EDGE*
>
> Tel: +44 3450 130 030 <+443450130030>
> Email: Thomas.Thorne@Net2Edge.com
> Web: http://www.Net2Edge.com/
>
> Net2Edge Limited is a company registered in England & Wales (Company No.
> 2438435, VAT No. GB 537553821) Passfield Oak, Liphook, Hampshire, GU30 7RL.
> This email transmission is confidential and intended solely for the person
> or organisation to whom it is addressed. If you are not the intended
> recipient, you must not copy, distribute or disseminate the information, or
> take any action in reliance of it. Any views expressed in this message are
> those of the individual sender, except where the sender specifically states
> them to be the views of any organisation or employer. If you have received
> this message in error, do not open any attachment but please notify the
> sender (above) and delete this message from your system. Please rely on
> your own virus check. Although all outbound mail is checked for viruses, no
> responsibility is taken by the sender for any damage rising out of any bug
> or virus infection.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e0160a4d649f35605426e40e7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think you might have already found an answer, but I don&=
#39;t think it&#39;s wise to override the do_install method. Plus, you shou=
ld also populate your &quot;${D}&quot; folder, which is=C2=A0&quot;${WORKDI=
R}/image&quot;; instead of ${IMAGE_ROOTFS}, which is =C2=A0&quot;${WORKDIR}=
/rootfs&quot;. AFAIK, the way you&#39;re doing, the contents of D will over=
ride what your=C2=A0do_intall put in IMAGE_ROOTFS during do_rootfs phase.<d=
iv><br></div><div>This should work: create a bbappend=C2=A0recipe:=C2=A0ppp=
_2.4.%.bbappend=C2=A0(change to the ppp=C2=A0version of your yocto=C2=A0bui=
ld)</div><div><br></div><div><br></div><div><div>SRC_URI +=3D &quot;\</div>=
<div>=C2=A0 =C2=A0 file://ppp \<br></div><div>=C2=A0 =C2=A0 file://<span st=
yle=3D"font-size:12.8px">chat-</span><wbr style=3D"font-size:12.8px"><span =
style=3D"font-size:12.8px">connect</span>=C2=A0\</div><div>=C2=A0 =C2=A0 fi=
le://<span style=3D"font-size:12.8px">chat-</span><wbr style=3D"font-size:1=
2.8px"><span style=3D"font-size:12.8px">disconnect</span>=C2=A0\</div><div>=
&quot;</div></div><div><br></div><div><div>do_install_<b>append</b>=C2=A0()=
 {</div><div>=C2=A0 =C2=A0 install -d ${D}${sysconfdir}/ppp/peers<br></div>=
<div><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 install -m 0755 ${S}/&l=
t;provider&gt;-ppp ${D}${sysconfdir}/</span><wbr style=3D"font-size:12.8px"=
><span style=3D"font-size:12.8px">ppp/peers/</span><br style=3D"font-size:1=
2.8px"><span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0 install -m 0755 =
${S}/&lt;provider&gt;-chat-connect ${D}${sysconfdir}/</span><wbr style=3D"f=
ont-size:12.8px"><span style=3D"font-size:12.8px">ppp/peers/</span><br styl=
e=3D"font-size:12.8px"><span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0 =
install -m 0755 ${S}/&lt;provider&gt;-chat-</span><wbr style=3D"font-size:1=
2.8px"><span style=3D"font-size:12.8px">disconnect ${D}${sysconfdir}/</span=
><wbr style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">ppp/peers=
/</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">}</=
span><br style=3D"font-size:12.8px"><br style=3D"font-size:12.8px"><span st=
yle=3D"font-size:12.8px"># Mark the files which are part of this package</s=
pan><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">FILES_$=
{PN} +=3D &quot;${sysconfdir}/ppp/ \</span><br style=3D"font-size:12.8px"><=
span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${sysconfdir}=
/ppp/peers/ \</span><br style=3D"font-size:12.8px"><span style=3D"font-size=
:12.8px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${sysconfdir}/ppp/peers/</span><span =
style=3D"font-size:12.8px">provider&gt;-ppp \</span><br style=3D"font-size:=
12.8px"><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</spa=
n><span style=3D"font-size:12.8px">${sysconfdir}/ppp/peers/</span><span sty=
le=3D"font-size:12.8px">provider&gt;-chat-connect \</span><br style=3D"font=
-size:12.8px"><span style=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0</span><span style=3D"font-size:12.8px">${sysconfdir}/ppp/peers/</span><=
span style=3D"font-size:12.8px">provider&gt;-chat-disconnect\</span></div><=
div><span style=3D"font-size:12.8px">&quot;</span><br></div></div><div><spa=
n style=3D"font-size:12.8px"><br></span></div><div><br></div><div class=3D"=
gmail_extra"><br clear=3D"all"><div><div class=3D"gmail_signature" data-sma=
rtmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><span style=3D"font-size:12.8px">Regards,</s=
pan><div style=3D"font-size:12.8px"><br></div></div><div dir=3D"ltr"><img s=
rc=3D"http://www.telensa.com/wp-content/uploads/2016/09/Telensa-Connected-s=
treet-lighting-600px.png" width=3D"200" height=3D"51"></div></div><div><spa=
n style=3D"font-family:Arial,sans-serif;font-size:10pt"><br></span></div><d=
iv><span style=3D"font-family:Arial,sans-serif;font-size:10pt">Miguel Aveir=
o | Software Engineer</span></div><div><a href=3D"tel:%2B44+1799+533200" st=
yle=3D"font-family:Arial,sans-serif;font-size:10pt;color:rgb(17,85,204)" ta=
rget=3D"_blank">+44 1799 533200</a></div><div><a href=3D"http://www.telensa=
.com/" style=3D"font-size:12.8px;color:rgb(17,85,204)" target=3D"_blank">te=
lensa.com</a><span style=3D"font-size:12.8px">=C2=A0|=C2=A0</span><a href=
=3D"http://www.twitter.com/telensa" style=3D"font-size:12.8px;color:rgb(17,=
85,204)" target=3D"_blank">@telensa</a><span style=3D"font-size:12.8px">=C2=
=A0|=C2=A0</span><a href=3D"http://www.linkedin.com/company/telensa" style=
=3D"font-size:12.8px;color:rgb(17,85,204)" target=3D"_blank">Linkedin</a></=
div><div><br></div></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On 25 November 2016 at 11:26, Thomas A. F. T=
horne MEng AUS MIET <span dir=3D"ltr">&lt;<a href=3D"mailto:Thomas.Thorne@n=
et2edge.com" target=3D"_blank">Thomas.Thorne@net2edge.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">
 =20

   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>I want to add 3 script files /ppp/peers/&lt;provider-name&gt;.=C2=A0=
 I
      am targeting a Raspberry Pi 3 but I would have though that adding
      non-compiled files to the root file-system was a fairly generic
      thing to do.=C2=A0 <br>
    </p>
    <p>Is there an example of how to do this somewhere?=C2=A0 Either a How =
To
      write up or an existing recipie that takes a set of text files and
      places them onto the target&#39;s rootfs.=C2=A0 <br>
    </p>
    <p><br>
    </p>
    <p>I must be missing something because I cannot get the file files
      onto the system.=C2=A0 <br>
    </p>
    I tried using do_deploy, but that puts files into my
    ../tmp/deploy/images/<wbr>raspberrypi3/etc/ppp/ which would be helpful
    for scripts to aid in image deployment.=C2=A0 It is not what I want
    though as the scripts need to be on the target.=C2=A0 <br>
    <br>
    Running a do_install() with or without a blank do_compile() has not
    resulted in things getting onto the target either.=C2=A0 Unless there i=
s
    something about using ${sysconfdir} or ${IMAGE_ROOTFS} or ${S} or
    ${D} or ${DEPLOYDIR} or ${WORKDIR} which is particular to the Pi.=C2=A0
    I&#39;d provide an example of my script but having changed it so many
    times in the last two days there is not much worth of sharing just
    one iteration.=C2=A0 <br>
    <br>
    Anything that resembles the following with; <br>
    =C2=A0${IMAGE_ROOTFS} possibly substituted for ${D} or missing<br>
    =C2=A0do_install replaced with do_deploy.=C2=A0 <br>
    There are probably other permutations that I have tried.=C2=A0 <br>
    <br>
    #<br>
    # Copy the ppp script files for &lt;vendor&gt; chips to the target
    filesystem<br>
    # These files are based on the details provided in <br>
    #<br>
    <br>
    SUMMARY =3D &quot;PPP Scripts for ...&quot;<br>
    SECTION =3D &quot;net&quot;<br>
    LICENSE =3D &quot;MIT&quot;<br>
    LIC_FILES_CHKSUM =3D
    <a class=3D"m_-5117249749416591977moz-txt-link-rfc2396E">&quot;file://$=
{COMMON_LICENSE_DIR}/<wbr>MIT;md5=3D<wbr>0835ade698e0bcf8506ecda2f7b4f3<wbr=
>02&quot;</a><br>
    DESCRIPTION =3D &quot;A set of Linux PPP scripts blar blar&quot;<br>
    <br>
    RDEPENDS_${PN} =3D &quot;ppp&quot;<br>
    <br>
    SRC_URI +=3D &quot;<a class=3D"m_-5117249749416591977moz-txt-link-freet=
ext">file://</a>&lt;provider&gt;-ppp&quot;<br>
    SRC_URI +=3D &quot;<a class=3D"m_-5117249749416591977moz-txt-link-freet=
ext">file://</a>&lt;provider&gt;-chat-<wbr>connect&quot;<br>
    SRC_URI +=3D &quot;<a class=3D"m_-5117249749416591977moz-txt-link-freet=
ext">file://</a>&lt;provider&gt;-chat-<wbr>disconnect&quot;<br>
    <br>
    S =3D &quot;${WORKDIR}&quot;<br>
    <br>
    #PACKAGES =3D+ &quot;${PN} ${PN}-staticdev&quot;<br>
    <br>
    #DEPLOYDIR =3D &quot;${WORKDIR}/deploy-${PN}&quot;<br>
    <br>
    #D =3D &quot;${DEPLOYDIR}&quot;<br>
    <br>
    inherit allarch<br>
    <br>
    # Install script on target&#39;s root file-system<br>
    do_install () {<br>
    =C2=A0=C2=A0=C2=A0 # Install init script and default settings<br>
    =C2=A0=C2=A0=C2=A0 #install -d ${IMAGE_ROOTFS}${sysconfdir}<br>
    =C2=A0=C2=A0=C2=A0 #install -d ${IMAGE_ROOTFS}${sysconfdir}/<wbr>ppp/<b=
r>
    =C2=A0=C2=A0=C2=A0 install -d ${IMAGE_ROOTFS}${sysconfdir}/<wbr>ppp/pee=
rs/<br>
    =C2=A0=C2=A0=C2=A0 install -m 0755 ${S}/&lt;provider&gt;-ppp
    ${IMAGE_ROOTFS}${sysconfdir}/<wbr>ppp/peers/<br>
    =C2=A0=C2=A0=C2=A0 install -m 0755 ${S}/&lt;provider&gt;-chat-connect
    ${IMAGE_ROOTFS}${sysconfdir}/<wbr>ppp/peers/<br>
    =C2=A0=C2=A0=C2=A0 install -m 0755 ${S}/&lt;provider&gt;-chat-<wbr>disc=
onnect
    ${IMAGE_ROOTFS}${sysconfdir}/<wbr>ppp/peers/<br>
    }<br>
    <br>
    # Mark the files which are part of this package<br>
    FILES_${PN} +=3D &quot;${sysconfdir}/ppp/&quot;<br>
    FILES_${PN} +=3D &quot;${sysconfdir}/ppp/peers/&quot;<br>
    FILES_${PN} +=3D &quot;${sysconfdir}/ppp/peers/&lt;<wbr>provider&gt;-pp=
p&quot;<br>
    FILES_${PN} +=3D
    &quot;${sysconfdir}/ppp/peers/&lt;<wbr>provider&gt;-chat-connect&quot;<=
br>
    FILES_${PN} +=3D
    &quot;${sysconfdir}/ppp/peers/&lt;<wbr>provider&gt;-chat-disconnect&quo=
t;<br>
    <br>
    <br>
    <br>
    I can find a lot of helloworld.c and automate examples.=C2=A0 There mus=
t
    be some basic ones for adding scripts somewhere?=C2=A0 My googlefu is
    very weak, I blame a lingering cold.=C2=A0 <br>
    <br>
    Any help will be very gratefully received.=C2=A0 <br>
    Regards, <br><span class=3D"HOEnZb"><font color=3D"#888888">
    <br>
    <div class=3D"m_-5117249749416591977moz-signature">-- <br>
      Thomas A. F. Thorne MEng. AUS MIET<br>
      <b>Software Engineer</b><br>
      <br>
      <b>NET2EDGE</b><br>
      <br>
      Tel: <a href=3D"tel:+443450130030" target=3D"_blank">+44 3450 130 030=
</a><br>
      Email: <a href=3D"mailto:Thomas.Thorne@Net2Edge.com" target=3D"_blank=
">Thomas.Thorne@Net2Edge.com</a><br>
      Web: <a href=3D"http://www.Net2Edge.com" target=3D"_blank">http://www=
.Net2Edge.com/</a><br>
      <br>
      <p><small>Net2Edge Limited is a company registered in England
          &amp; Wales (Company No. 2438435, VAT No. GB 537553821)
          Passfield Oak, Liphook, Hampshire, GU30 7RL. This email
          transmission is confidential and intended solely for the
          person or organisation to whom it is addressed. If you are not
          the intended recipient, you must not copy, distribute or
          disseminate the information, or take any action in reliance of
          it. Any views expressed in this message are those of the
          individual sender, except where the sender specifically states
          them to be the views of any organisation or employer. If you
          have received this message in error, do not open any
          attachment but please notify the sender (above) and delete
          this message from your system. Please rely on your own virus
          check. Although all outbound mail is checked for viruses, no
          responsibility is taken by the sender for any damage rising
          out of any bug or virus infection.</small></p>
    </div>
  </font></span></div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--089e0160a4d649f35605426e40e7--

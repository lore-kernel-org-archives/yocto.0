Return-Path: <actiononmail@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8350FE0080C; Thu, 21 Aug 2014 05:32:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,MISSING_HEADERS,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (actiononmail[at]gmail.com)
	*  1.0 MISSING_HEADERS Missing To: header
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C75DE004F5
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 05:32:53 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id hy10so10677122vcb.18
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 05:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc
	:content-type; bh=rQlMCAoASRVYvBOpHtc0Xvkxc0ifec33JryX7rdct+c=;
	b=aaIuC9TwZcRV0CO83+dIlOF0qGkwB53+ev0XcbqmMDhGW3NMOn7JAWY0YFZ1lRyFdp
	oGWAQMwxnr/L12QfleBzcOMG3IblHNj3mr1PcjdHM9VuWCroPUjUzGC0KSSKZfBAktQ7
	hE96GpCFs6Z5VZJmaoWvGQBTjg2h8pk9Qehc8TyRBkM5+jOcrsAUXmUVDSb8xAN6ORVt
	bAlKpQ2N1Nq0D65F1Ygi3jQhI8kfZiZ8fR33Ki3hSjnTtuKCHo9ZnTYZNGr2ziZoJOmi
	g5GtXuGtLFr6nh0C51DIt6xs9DuYDlbI3t2fawuWpSXGVJKj09yqMXzWbfBEL0ekXlOs
	fA0g==
X-Received: by 10.220.110.77 with SMTP id m13mr398535vcp.35.1408624372787;
	Thu, 21 Aug 2014 05:32:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.248.132 with HTTP; Thu, 21 Aug 2014 05:32:32 -0700 (PDT)
In-Reply-To: <53F5C828.4090509@windriver.com>
References: <36A43B0E1E88D84791516F9D44BC48331B3C8D01@corpmail01.corp.sensis.com>
	<53F5C828.4090509@windriver.com>
From: Akash Bhatnagar <actiononmail@gmail.com>
Date: Thu, 21 Aug 2014 18:02:32 +0530
Message-ID: <CAJqwu=9n=NN39rgyde2G1SX4KEpLO78JujnWZdsf6u5FVSt0zg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Setting Default User Accounts
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
X-List-Received-Date: Thu, 21 Aug 2014 12:32:58 -0000
Content-Type: multipart/alternative; boundary=047d7b3a90605cb221050122eb0b

--047d7b3a90605cb221050122eb0b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi I have added new user in following way:-

S =3D "${WORKDIR}"

inherit useradd

USERADD_PACKAGES =3D "${PN}"

USERADD_PARAM_${PN} =3D "-u 1200 -d /home/test -r -s /bin/bash -P 'test123'
test "


GROUPADD_PARAM_${PN} =3D "-g 880 testgrp"


do_install () {
        install -d -m 755 ${D}/home/test

        install -p -m 644 <ANYFILE> ${D}/home/test/

        chown -R cli ${D}/home/test

        chgrp -R cligrp ${D}/home/test
}

FILES_${PN} =3D "/home/test/* "

INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"





On Thu, Aug 21, 2014 at 3:51 PM, ChenQi <Qi.Chen@windriver.com> wrote:

>  How about add in local.conf:
>
> INHERIT +=3D "extrausers"
> EXTRA_USERS_PARAMS =3D "usermod -L root; \
>                       useradd -P 'test' test;"
>
> //Chen Qi
>
>
> On 08/21/2014 03:13 AM, Crast, Nicholas wrote:
>
>  All,
>
>
>
> I am currently in the middle of a battle with yocto, trying to accomplish
> the following:
>
>
>
> 1.)    Disable root user account
>
> 2.)    Create default user account with default password
>
>
>
> I currently have the following a recipe:
>
> USERADD_PACKAGES =3D "${PN}"
>
> USERADD_PARAM_${PN} =3D "-d /home/nick -r -s /bin/bash nick "
>
>
>
> In order to try to add a user account. I have this in my image recipe:
>
>
>
> ROOTFS_POSTPROCESS_COMMAND +=3D "set_nick_passwd;"
>
> set_nick_passwd() {
>
>    sed 's%^ nick:[^:]*:% nick:adySxRKMiPvjA:%' \
>
>        < ${IMAGE_ROOTFS}/etc/shadow \
>
>        > ${IMAGE_ROOTFS}/etc/shadow.new;
>
>    mv ${IMAGE_ROOTFS}/etc/shadow.new ${IMAGE_ROOTFS}/etc/shadow ;
>
> }
>
>
>
> This is to edit the /etc/shadow file and insert a new (hashed) password.
> What I=E2=80=99m looking for is a cleaner way to do this. When I run bitb=
ake I get
> a lot of warnings because the =E2=80=9Cnick=E2=80=9D account is already a=
n account on my
> build machine. This seems like a fairly common use case, and I think I am
> likely going about it wrong.
>
>
>
> Does anybody have any advice?
>
>
>
> -Nick
>
> ----------------------------------------
>
> Nick Crast
>
> Associate Software Engineer
>
> Saab Sensis Corporation
>
> Phone: 315-445-5703
>
> Email: Nicholas.Crast@saabsensis.com
>
>
>
> *This message is intended only for the addressee and may contain
> information that is company confidential or privileged. Any technical dat=
a
> in this message may be exported only in accordance with the U.S.
> International Traffic in Arms Regulations (22 CFR Parts 120-130) or the
> Export Administration Regulations (15 CFR Parts 730-774). Unauthorized us=
e
> is strictly prohibited and may be unlawful. If you are not the intended
> recipient, or the person responsible for delivering to the intended
> recipient, you should not read, copy, disclose or otherwise use this
> message. If you have received this email in error, please delete it, and
> advise the sender immediately. *
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b3a90605cb221050122eb0b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi I have added new user in following way:-<br><br>S =3D &=
quot;${WORKDIR}&quot;<br><br>inherit useradd<br><br>USERADD_PACKAGES =3D &q=
uot;${PN}&quot;<br><br>USERADD_PARAM_${PN} =3D &quot;-u 1200 -d /home/test =
-r -s /bin/bash -P &#39;test123&#39; test &quot;<br>

<br><br>GROUPADD_PARAM_${PN} =3D &quot;-g 880 testgrp&quot;<br><br><br>do_i=
nstall () {<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d -m 755=
 ${D}/home/test<br><br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -=
p -m 644 &lt;ANYFILE&gt; ${D}/home/test/<br><br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 chown -R cli ${D}/home/test<br>

<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chgrp -R cligrp ${D}/home/te=
st<br>}<br><br>FILES_${PN} =3D &quot;/home/test/* &quot;<br><br>INHIBIT_PAC=
KAGE_DEBUG_SPLIT =3D &quot;1&quot;<br><br><br><br></div><div class=3D"gmail=
_extra"><br><br><div class=3D"gmail_quote">

On Thu, Aug 21, 2014 at 3:51 PM, ChenQi <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:Qi.Chen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">


 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <div>How about add in local.conf:<br>
      <br>
      INHERIT +=3D &quot;extrausers&quot;<br>
      EXTRA_USERS_PARAMS =3D &quot;usermod -L root; \=C2=A0=C2=A0=C2=A0 <br=
>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 useradd -P &#39;t=
est&#39; test;&quot;<br>
      <br>
      //Chen Qi<div><div class=3D"h5"><br>
      <br>
      On 08/21/2014 03:13 AM, Crast, Nicholas wrote:<br>
    </div></div></div><div><div class=3D"h5">
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal">All,<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">I am currently in the middle of a battle
          with yocto, trying to accomplish the following:<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p><span>1.)<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=
=C2=A0=C2=A0=C2=A0
            </span></span>Disable root user account<u></u><u></u></p>
        <p><span>2.)<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=
=C2=A0=C2=A0=C2=A0
            </span></span>Create default user account with
          default password<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">I currently have the following a recipe:<u><=
/u><u></u></p>
        <p class=3D"MsoNormal">USERADD_PACKAGES =3D &quot;${PN}&quot;<u></u=
><u></u></p>
        <p class=3D"MsoNormal">USERADD_PARAM_${PN} =3D &quot;-d /home/nick =
-r -s
          /bin/bash nick &quot;<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">In order to try to add a user account. I
          have this in my image recipe:<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">ROOTFS_POSTPROCESS_COMMAND +=3D
          &quot;set_nick_passwd;&quot;<u></u><u></u></p>
        <p class=3D"MsoNormal">set_nick_passwd() {<u></u><u></u></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0 sed &#39;s%^ nick:[^:]*:%
          nick:adySxRKMiPvjA:%&#39; \<u></u><u></u></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &lt; ${=
IMAGE_ROOTFS}/etc/shadow \<u></u><u></u></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &gt; ${=
IMAGE_ROOTFS}/etc/shadow.new;<u></u><u></u></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0 mv ${IMAGE_ROOTFS}/etc/shadow.n=
ew
          ${IMAGE_ROOTFS}/etc/shadow ;<u></u><u></u></p>
        <p class=3D"MsoNormal">}<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">This is to edit the /etc/shadow file and
          insert a new (hashed) password. What I=E2=80=99m looking for is a
          cleaner way to do this. When I run bitbake I get a lot of
          warnings because the =E2=80=9Cnick=E2=80=9D account is already an=
 account on
          my build machine. This seems like a fairly common use case,
          and I think I am likely going about it wrong.<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Does anybody have any advice?<u></u><u></u><=
/p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">-Nick<u></u><u></u></p>
        <p class=3D"MsoNormal">----------------------------------------<u><=
/u><u></u></p>
        <p class=3D"MsoNormal">Nick Crast<u></u><u></u></p>
        <p class=3D"MsoNormal">Associate Software Engineer<u></u><u></u></p=
>
        <p class=3D"MsoNormal">Saab Sensis Corporation<u></u><u></u></p>
        <p class=3D"MsoNormal">Phone: 315-445-5703<u></u><u></u></p>
        <p class=3D"MsoNormal">Email: <a href=3D"mailto:Nicholas.Crast@saab=
sensis.com" target=3D"_blank">Nicholas.Crast@saabsensis.com</a><u></u><u></=
u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
      </div>
      <br>
      <i><small>This message is intended only for the addressee and may
          contain information that is company confidential or
          privileged. Any technical data in this message may be exported
          only in accordance with the U.S. International Traffic in Arms
          Regulations (22 CFR Parts 120-130) or the Export
          Administration Regulations (15 CFR Parts 730-774).
          Unauthorized use is strictly prohibited and may be unlawful.
          If you are not the intended recipient, or the person
          responsible for delivering to the intended recipient, you
          should not read, copy, disclose or otherwise use this message.
          If you have received this email in error, please delete it,
          and advise the sender immediately.
        </small></i>
      <br>
      <fieldset></fieldset>
      <br>
    </blockquote>
    <br>
  </div></div></div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--047d7b3a90605cb221050122eb0b--

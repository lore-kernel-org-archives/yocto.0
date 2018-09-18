Return-Path: <warrenphd@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41844E00B47; Tue, 18 Sep 2018 02:33:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (warrenphd[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 625E2E00B43
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 02:33:17 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id n18-v6so963215ioa.9
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 02:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=2LGyUyZ4QqN8LzSk5tZ2bln2A5EAkvgA+3SkpKlE9bc=;
	b=XoWggmifjyzD9HoSOngeAY0HU+D1DdbEhz8sytGSUHJi/vJPPqURsf/HJ5OfNPdsQR
	dFOz/eK/fZnM4aw0BBE7hNwjvtUJes7PWd0nrGtd68MwGsaXGZTL8lEK7UjPPJ1O0CyI
	gDvJkHmQmkEE12ok8addeGszMy+TyQBqQf74CxV2imVcP/zqWC5Oj+IOsvOb7ijmiXLN
	OHRiOvWQw/Gq4K+kqzKZhLZBa7/nof6r9QSs0TIkGIchJPg7Jryhuv8Tb/ktfGipl2xW
	2tozJR3ZJ+YP6mtoKRz9FFExu7dxVvd4JsOvAjKaNniR/qVbkf7wbbt9psWRMCKcvVZF
	AKTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2LGyUyZ4QqN8LzSk5tZ2bln2A5EAkvgA+3SkpKlE9bc=;
	b=j6HgE0rNPyX/MErR5yEHO1nLFfb44H1939q3c0+0yzUNij5CeLhNiPViVuDbasghLn
	qbDkCtJdQ45QQOizGutZDjiDzhaqZU3up2QGnLHkUWItK5iDxkRkpKwTeoOdb3vmNr4v
	sL32ZzHx60g+8YiLS03RDBgdyZgoLVntihKtxpSzIEgVJCjNYggWQG9IkQkB+CsuBtAL
	85/gF19Phl5k0fPPf823gW3m2U+R3LJTL0eEAttAbXxPCuTmLX6rH5xel7Pb+0g5v4PO
	y73Jq+YFXcvIW9pJILNFLULt+vkJTQpd7Zu7S7FFDjEVLo9R9m1T6B13dgZUcr3hYX/J
	EOuw==
X-Gm-Message-State: APzg51BHBYhCN6+4JQ3GrHL64kr1Oge3ts8Bqfe3jKELhyBVQ5kqbnM4
	3HOcOs79P72X2Gj1gbc4JWaXG/fN0LxvmKT9YKFuYOSX
X-Google-Smtp-Source: ANB0VdaW9sBHZYxlq15xy8fNsSTdlWx8EoWEoqP8kB6BIUS2ArGEfl8D6hKN6LMvpgTj2HFMEJ1ms6lBQGSFe3KGwwo=
X-Received: by 2002:a6b:5911:: with SMTP id
	n17-v6mr25097108iob.68.1537263196395; 
	Tue, 18 Sep 2018 02:33:16 -0700 (PDT)
MIME-Version: 1.0
From: Phillip Warren <warrenphd@gmail.com>
Date: Tue, 18 Sep 2018 04:33:04 -0500
Message-ID: <CAOiuRWV-Z160=uJmaBeQ8B+m0mQ4RuQTOXOm7isfA71QSFgDMg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Adding SSL support to RabbitMQ Server 3.2.4
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
X-List-Received-Date: Tue, 18 Sep 2018 09:33:18 -0000
Content-Type: multipart/alternative; boundary="000000000000bf66d5057621fa97"

--000000000000bf66d5057621fa97
Content-Type: text/plain; charset="UTF-8"

Hi, rookie here. I'm trying to enable SSL for RabbitMQ Server 3.2.4 on pyro.

Without modifying the build, I simply created /etc/rabbitmq/rabbitmq.config
with the following entries:

[

  {rabbitmq_management,

  [

    {listener, [{port,     15671},

                {ip,       "0.0.0.0"},

                {ssl,      true},

                {ssl_opts, [{cacertfile, "/etc/rabbitmq/root-ca.pem"},

                            {certfile,   "/etc/rabbitmq/dev.pem"},

                            {keyfile,    "/etc/rabbitmq/dev-np.key"}]}]}

  ]}

].


and placed the cacertfile, certfile, and keyfile at /etc/rabbitmq/


RabbitMQ Server fails to start at boot.
/var/log/rabbitmq/rabbitmq@{hostname}.log
shows the following error:


=ERROR REPORT==== 17-Sep-2018::20:13:16 ===
** Generic server rabbit_web_dispatch_registry terminating
** Last message in was {add,rabbit_mgmt,
                           [{port,15671},
                            {ip,"0.0.0.0"},
                            {ssl,true},
                            {ssl_opts,
                                [{cacertfile,"/etc/rabbitmq/root-ca.pem"},
                                 {certfile,"/etc/rabbitmq/dcx-dev.pem"},

 {keyfile,"/etc/rabbitmq/dcx-dev-np.key"}]}],
                           #Fun<rabbit_web_dispatch.1.73001898>,
                           #Fun<rabbit_mgmt_app.2.77843060>,
                           {[],"RabbitMQ Management"}}
** When Server state == undefined
** Reason for termination ==
** {could_not_start_listener,
       [{port,15671},
        {ip,"0.0.0.0"},
        {ssl,true},
        {ssl_opts,
            [{cacertfile,"/etc/rabbitmq/root-ca.pem"},
             {certfile,"/etc/rabbitmq/dcx-dev.pem"},
             {keyfile,"/etc/rabbitmq/dcx-dev-np.key"}]}],
       {'EXIT',
           {{case_clause,{error,{"no such file or
directory","crypto.app"}}},
            [{mochiweb,ensure_started,1,
                 [{file,"mochiweb-wrapper/mochiweb-git/src/mochiweb.erl"},
                  {line,71}]},
             {mochiweb_socket_server,prep_ssl,1,
                 [{file,

"mochiweb-wrapper/mochiweb-git/src/mochiweb_socket_server.erl"},
                  {line,139}]},
             {mochiweb_socket_server,start_server,2,
                 [{file,

"mochiweb-wrapper/mochiweb-git/src/mochiweb_socket_server.erl"},
                  {line,130}]},
             {supervisor,do_start_child,2,
                 [{file,"supervisor.erl"},{line,310}]},
             {supervisor,handle_start_child,2,
                 [{file,"supervisor.erl"},{line,681}]},

 {supervisor,handle_call,3,[{file,"supervisor.erl"},{line,390}]},
             {gen_server,handle_msg,5,[{file,"gen_server.erl"},{line,585}]},
             {proc_lib,init_p_do_apply,3,
                 [{file,"proc_lib.erl"},{line,239}]}]}}}

After googling around, I'm going down the path of trying to build Erlang
with SSL support. Please stop me if this isn't the proper approach!

I clearly see in
meta-cloud-services/meta-openstack/recipes-devtools/erlang/erlang-native_R16B03-1.bb
a line that says:

EXTRA_OECONF = '--without-ssl'


To alter this statement, I wrote an erlang-native_R16B03-1.bbappend in my
meta-layer and tried the following entries:

*****************************************************************************************************

DEPENDS += "ncurses-native openssl"
EXTRA_OECONF = '--with-ssl=/usr/bin/openssl'

This fails to build with the following error:

configure: error: Invalid path to option --with-ssl=PATH

configure: error: /bin/bash
'build/tmp/work/x86_64-linux/erlang-native/R16B03-1-r0/otp_src_R16B03-1/erts/configure'
failed for erts


*****************************************************************************************************

DEPENDS += "ncurses-native openssl"
EXTRA_OECONF = '--with-ssl'


Builds successfully but products the same error as above in
/var/log/rabbitmq/rabbitmq@{hostname}.log

*****************************************************************************************************

DEPENDS += "ncurses-native openssl"
EXTRA_OECONF = "--with-ssl=${STAGING_DIR_HOST}${layout_exec_prefix}"

Builds successfully but products the same error as above
in /var/log/rabbitmq/rabbitmq@{hostname}.log
*****************************************************************************************************

DEPENDS += "ncurses-native openssl"
EXTRA_OECONF =  "--with-ssl use SSL"

Builds successfully but products the same error as above
in /var/log/rabbitmq/rabbitmq@{hostname}.log
*****************************************************************************************************

Detailed help is greatly appreciated. Seems like I'm missing something
obvious.

Best Regards,
Phillip Warren

--000000000000bf66d5057621fa97
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><font face=3D"arial, helvetica,=
 sans-serif">Hi, rookie here. I&#39;m trying to enable SSL for RabbitMQ Ser=
ver 3.2.4 on pyro.</font></div><div dir=3D"ltr"><font face=3D"arial, helvet=
ica, sans-serif"><br></font></div><div dir=3D"ltr"><font face=3D"arial, hel=
vetica, sans-serif">Without modifying the build, I simply created /etc/rabb=
itmq/rabbitmq.config with the following entries:</font><div><font face=3D"a=
rial, helvetica, sans-serif"><br></font></div><div>





<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;line-height:normal"><font fac=
e=3D"arial, helvetica, sans-serif">[</font></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;line-height:normal"><font fac=
e=3D"arial, helvetica, sans-serif"><span class=3D"gmail-Apple-converted-spa=
ce">=C2=A0 </span>{rabbitmq_management,</font></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;line-height:normal"><font fac=
e=3D"arial, helvetica, sans-serif"><span class=3D"gmail-Apple-converted-spa=
ce">=C2=A0 </span>[</font></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;line-height:normal"><font fac=
e=3D"arial, helvetica, sans-serif"><span class=3D"gmail-Apple-converted-spa=
ce">=C2=A0 =C2=A0 </span>{listener, [{port, <span class=3D"gmail-Apple-conv=
erted-space">=C2=A0 =C2=A0 </span>15671},</font></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;line-height:normal"><font fac=
e=3D"arial, helvetica, sans-serif"><span class=3D"gmail-Apple-converted-spa=
ce">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 </span>{ip, <sp=
an class=3D"gmail-Apple-converted-space">=C2=A0 =C2=A0 =C2=A0 </span>&quot;=
0.0.0.0&quot;},</font></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;line-height:normal"><font fac=
e=3D"arial, helvetica, sans-serif"><span class=3D"gmail-Apple-converted-spa=
ce">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 </span>{ssl,<sp=
an class=3D"gmail-Apple-converted-space">=C2=A0 =C2=A0 =C2=A0 </span>true},=
</font></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;line-height:normal"><font fac=
e=3D"arial, helvetica, sans-serif"><span class=3D"gmail-Apple-converted-spa=
ce">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 </span>{ssl_opt=
s, [{cacertfile, &quot;/etc/rabbitmq/root-ca.pem&quot;},</font></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;line-height:normal"><font fac=
e=3D"arial, helvetica, sans-serif"><span class=3D"gmail-Apple-converted-spa=
ce">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 </span>{certfile, <span class=3D"gmail-Apple-co=
nverted-space">=C2=A0 </span>&quot;/etc/rabbitmq/dev.pem&quot;},</font></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;line-height:normal"><font fac=
e=3D"arial, helvetica, sans-serif"><span class=3D"gmail-Apple-converted-spa=
ce">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 </span>{keyfile,<span class=3D"gmail-Apple-conv=
erted-space">=C2=A0 =C2=A0 </span>&quot;/etc/rabbitmq/dev-np.key&quot;}]}]}=
</font></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;line-height:normal"><font fac=
e=3D"arial, helvetica, sans-serif"><span class=3D"gmail-Apple-converted-spa=
ce">=C2=A0 </span>]}</font></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;line-height:normal"><font fac=
e=3D"arial, helvetica, sans-serif">].</font></p><p class=3D"gmail-p1" style=
=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:normal;f=
ont-stretch:normal;line-height:normal"><font face=3D"arial, helvetica, sans=
-serif"><br></font></p><p class=3D"gmail-p1" style=3D"margin:0px;font-varia=
nt-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;line-h=
eight:normal"><font face=3D"arial, helvetica, sans-serif">and placed the=C2=
=A0cacertfile, certfile, and keyfile=C2=A0at /etc/rabbitmq/</font></p><p cl=
ass=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;font-stretch:normal;line-height:normal"><font face=3D"=
arial, helvetica, sans-serif"><br></font></p><p class=3D"gmail-p1" style=3D=
"margin:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;line-height:normal"><font face=3D"arial, helvetica, sans-se=
rif">RabbitMQ Server fails to start at boot. /var/log/rabbitmq/rabbitmq@{ho=
stname}.log shows the following error:</font></p><p class=3D"gmail-p1" styl=
e=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:normal;=
font-stretch:normal;line-height:normal"><font face=3D"arial, helvetica, san=
s-serif"><br></font></p><font face=3D"arial, helvetica, sans-serif"><div><d=
iv style=3D""><font face=3D"arial, helvetica, sans-serif">=3DERROR REPORT=
=3D=3D=3D=3D 17-Sep-2018::20:13:16 =3D=3D=3D</font></div><div style=3D""><f=
ont face=3D"arial, helvetica, sans-serif">** Generic server rabbit_web_disp=
atch_registry terminating=C2=A0</font></div><div style=3D""><font face=3D"a=
rial, helvetica, sans-serif">** Last message in was {add,rabbit_mgmt,</font=
></div><div style=3D""><font face=3D"arial, helvetica, sans-serif">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0[{port,15671},</font></div><div style=3D""><font face=3D"a=
rial, helvetica, sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {ip,&quot;0.0.0.0&quot=
;},</font></div><div style=3D""><font face=3D"arial, helvetica, sans-serif"=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 {ssl,true},</font></div><div style=3D""><font face=
=3D"arial, helvetica, sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {ssl_opts,</font><=
/div><div style=3D""><font face=3D"arial, helvetica, sans-serif">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [{cacertfile,&quot;/etc/rabbitmq/root-ca.pem&qu=
ot;},</font></div><div style=3D""><font face=3D"arial, helvetica, sans-seri=
f">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{certfile,&quot;/etc/rabbit=
mq/dcx-dev.pem&quot;},</font></div><div style=3D""><font face=3D"arial, hel=
vetica, sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{keyfile,&qu=
ot;/etc/rabbitmq/dcx-dev-np.key&quot;}]}],</font></div><div style=3D""><fon=
t face=3D"arial, helvetica, sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#Fun&lt;rabbi=
t_web_dispatch.1.73001898&gt;,</font></div><div style=3D""><font face=3D"ar=
ial, helvetica, sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#Fun&lt;rabbit_mgmt_app=
.2.77843060&gt;,</font></div><div style=3D""><font face=3D"arial, helvetica=
, sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{[],&quot;RabbitMQ Management&quot;}}=
</font></div></div>** When Server state =3D=3D undefined<br>** Reason for t=
ermination =3D=3D <br>** {could_not_start_listener,<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0[{port,15671},<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 {ip,&quot;0.0.0.0&quot=
;},<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 {ssl,true},<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 {ssl_opts,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [{cacertfile,&q=
uot;/etc/rabbitmq/root-ca.pem&quot;},<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0{certfile,&quot;/etc/rabbitmq/dcx-dev.pem&quot;},<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{keyfile,&quot;/etc/rabbitmq/dcx-d=
ev-np.key&quot;}]}],<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0{&#39;EXIT&#39;,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{{case_clause,{error,{&quot;no such f=
ile or directory&quot;,&quot;crypto.app&quot;}}},<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 [{mochiweb,ensure_started,1,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[{file,&quot;mochiweb-wrapper/moch=
iweb-git/src/mochiweb.erl&quot;},<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 {line,71}]},<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0{mochiweb_socket_server,prep_ssl,1,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[{file,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;mochiweb-wrap=
per/mochiweb-git/src/mochiweb_socket_server.erl&quot;},<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {line,139}]},<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{mochiweb_socket_server,start_serv=
er,2,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[{fi=
le,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;mochiweb-wrapper/mochiweb-git/src/mochiweb_socket_server.e=
rl&quot;},<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 {line,130}]},<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{super=
visor,do_start_child,2,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0[{file,&quot;supervisor.erl&quot;},{line,310}]},<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{supervisor,handle_start_child,2,<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[{file,&qu=
ot;supervisor.erl&quot;},{line,681}]},<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0{supervisor,handle_call,3,[{file,&quot;supervisor.erl&quot=
;},{line,390}]},<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{gen_se=
rver,handle_msg,5,[{file,&quot;gen_server.erl&quot;},{line,585}]},<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{proc_lib,init_p_do_apply,3,<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[{file,&quo=
t;proc_lib.erl&quot;},{line,239}]}]}}}</font></div><div><font face=3D"arial=
, helvetica, sans-serif"><br></font></div><div><font face=3D"arial, helveti=
ca, sans-serif">After googling around,=C2=A0I&#39;m going down the path of =
trying to build Erlang with SSL support. Please stop me if this isn&#39;t t=
he proper approach!</font></div><div><font face=3D"arial, helvetica, sans-s=
erif"><br></font></div><div><font face=3D"arial, helvetica, sans-serif">I c=
learly see in meta-cloud-services/meta-openstack/recipes-devtools/erlang/er=
lang-native_R16B03-1.bb a line that says:</font></div><div><font face=3D"ar=
ial, helvetica, sans-serif"><br></font></div><div>





<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;line-height:normal"><font fac=
e=3D"arial, helvetica, sans-serif">EXTRA_OECONF =3D &#39;--without-ssl&#39;=
</font></p><p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:n=
ormal;font-variant-east-asian:normal;font-stretch:normal;line-height:normal=
"><font face=3D"arial, helvetica, sans-serif"><br></font></p><p class=3D"gm=
ail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-a=
sian:normal;font-stretch:normal;line-height:normal"><font face=3D"arial, he=
lvetica, sans-serif">To alter=C2=A0this statement, I wrote an=C2=A0erlang-n=
ative_R16B03-1.bbappend in my meta-layer and tried the following=C2=A0entri=
es:</font></p></div><div><font face=3D"arial, helvetica, sans-serif"><br cl=
ass=3D"gmail-Apple-interchange-newline">***********************************=
******************************************************************<br></fon=
t></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><=
div><font face=3D"arial, helvetica, sans-serif">DEPENDS=C2=A0+=3D &quot;ncu=
rses-native openssl&quot;</font></div><div><font face=3D"arial, helvetica, =
sans-serif">EXTRA_OECONF =3D &#39;--with-ssl=3D/usr/bin/openssl&#39;</font>=
</div><div><div><font face=3D"arial, helvetica, sans-serif"><br class=3D"gm=
ail-Apple-interchange-newline">This fails to build with the following error=
:</font></div><div><font face=3D"arial, helvetica, sans-serif"><br></font><=
/div><div><p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:no=
rmal;font-variant-east-asian:normal;font-stretch:normal;line-height:normal"=
><font face=3D"arial, helvetica, sans-serif">configure: error: Invalid path=
 to option --with-ssl=3DPATH</font></p><p class=3D"gmail-p1" style=3D"margi=
n:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stret=
ch:normal;line-height:normal"><font face=3D"arial, helvetica, sans-serif">c=
onfigure: error: /bin/bash &#39;build/tmp/work/x86_64-linux/erlang-native/R=
16B03-1-r0/otp_src_R16B03-1/erts/configure&#39; failed for erts</font></p><=
p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-v=
ariant-east-asian:normal;font-stretch:normal;line-height:normal"><font face=
=3D"arial, helvetica, sans-serif"><br></font></p><p class=3D"gmail-p1" styl=
e=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:normal;=
font-stretch:normal;line-height:normal"><font face=3D"arial, helvetica, san=
s-serif">******************************************************************=
***********************************</font></p></div></div><div><font face=
=3D"arial, helvetica, sans-serif"><br></font></div><div><div><font face=3D"=
arial, helvetica, sans-serif">DEPENDS=C2=A0+=3D &quot;ncurses-native openss=
l&quot;</font></div><div><font face=3D"arial, helvetica, sans-serif">EXTRA_=
OECONF =3D &#39;--with-ssl&#39;</font></div></div><div><p class=3D"gmail-p1=
" style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:n=
ormal;font-stretch:normal;line-height:normal"><font face=3D"arial, helvetic=
a, sans-serif"><font style=3D""><br class=3D"gmail-Apple-interchange-newlin=
e">Builds successfully but products the same error as above in=C2=A0</font>=
/var/log/rabbitmq/rabbitmq@{hostname}.log<br></font></p><p class=3D"gmail-p=
1" style=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-stretch:normal;line-height:normal"><font face=3D"arial, helveti=
ca, sans-serif">***********************************************************=
******************************************<br></font></p></div><div><font f=
ace=3D"arial, helvetica, sans-serif"><br></font></div><div><div><font face=
=3D"arial, helvetica, sans-serif">DEPENDS=C2=A0+=3D &quot;ncurses-native op=
enssl&quot;</font></div><div><font face=3D"arial, helvetica, sans-serif">EX=
TRA_OECONF =3D &quot;--with-ssl=3D${STAGING_DIR_HOST}${layout_exec_prefix}&=
quot;</font></div><div><font face=3D"arial, helvetica, sans-serif"><br clas=
s=3D"gmail-Apple-interchange-newline">Builds successfully but products the =
same error as above in=C2=A0/var/log/rabbitmq/rabbitmq@{hostname}.log<br></=
font></div></div><div><font face=3D"arial, helvetica, sans-serif">*********=
***************************************************************************=
*****************</font></div><div><font face=3D"arial, helvetica, sans-ser=
if"><br></font><div><font face=3D"arial, helvetica, sans-serif">DEPENDS=C2=
=A0+=3D &quot;ncurses-native openssl&quot;</font></div><font face=3D"arial,=
 helvetica, sans-serif">EXTRA_OECONF =3D=C2=A0 &quot;--with-ssl use SSL&quo=
t;</font></div><div><font face=3D"arial, helvetica, sans-serif"><br></font>=
</div><div><font face=3D"arial, helvetica, sans-serif">Builds successfully =
but products the same error as above in=C2=A0/var/log/rabbitmq/rabbitmq@{ho=
stname}.log</font></div><div><font face=3D"arial, helvetica, sans-serif">**=
***************************************************************************=
************************<br></font></div><div><font face=3D"arial, helvetic=
a, sans-serif"><br></font></div><div><font face=3D"arial, helvetica, sans-s=
erif">Detailed help is greatly appreciated. Seems like I&#39;m missing some=
thing obvious.</font></div><div><font face=3D"arial, helvetica, sans-serif"=
><br></font></div><div><div><font face=3D"arial, helvetica, sans-serif">Bes=
t Regards,<br></font></div><font face=3D"arial, helvetica, sans-serif">Phil=
lip Warren</font><br></div></div></div></div></div></div></div></div>

--000000000000bf66d5057621fa97--

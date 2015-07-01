Return-Path: <vipin.jn@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B323E00A39; Tue, 30 Jun 2015 20:36:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MANY_SPAN_IN_TEXT, RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vipin.jn[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 MANY_SPAN_IN_TEXT Many <SPAN> tags embedded within text
Received: from mail-yk0-f176.google.com (mail-yk0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED5D9E00A21
	for <yocto@yoctoproject.org>; Tue, 30 Jun 2015 20:35:57 -0700 (PDT)
Received: by ykfy125 with SMTP id y125so27982937ykf.1
	for <yocto@yoctoproject.org>; Tue, 30 Jun 2015 20:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=67DtsTU9A8wKpA1N/UHIa1lDbIyIDk0ESa3V5VhXyZw=;
	b=opRqNc8P/6X//uPzzOmx3GebYGfHH5/1foH2B01C6y1ujbacp7H4FMQCTq12YgVeqC
	nb2iPJoCy8IjrnAidSgCQRpQ4tQxjLHYOBubOpySKJnUu4tfTRBoF2H6Rk0EZ9A9SsYd
	rbyM6+HUz1tQr3EMms0EdAKtdX+XNS7F5GVy54XYezkPYCKDeYszdYOSGhKDgWbA25hj
	uEf/VWkJ6soh4HI/0a7/OCapn6GJOu9LkZSbRnAJ7Fs9tZl0T+7q7/nUPA74mhDr4LPN
	vjRJetOGlPdDvmwuYuwkZ9h2wov1INW4fT0GoSD1315CvJ+abYA0lovJ5HfFCJ4YT9eD
	LQvA==
MIME-Version: 1.0
X-Received: by 10.13.205.196 with SMTP id p187mr29977912ywd.119.1435721757403; 
	Tue, 30 Jun 2015 20:35:57 -0700 (PDT)
Received: by 10.13.240.65 with HTTP; Tue, 30 Jun 2015 20:35:57 -0700 (PDT)
In-Reply-To: <CAFYg0UpeehEy41ethe90thM+hL3EzkPZWcuKJ_3OS2hN4kuESQ@mail.gmail.com>
References: <CAFYg0UpeehEy41ethe90thM+hL3EzkPZWcuKJ_3OS2hN4kuESQ@mail.gmail.com>
Date: Wed, 1 Jul 2015 09:05:57 +0530
Message-ID: <CAFYg0Uq1yqubKPyn2r36h1xXRLTVQvzCvx=hYO3FvGpJzr1pfQ@mail.gmail.com>
From: Vipin Nair <vipin.jn@gmail.com>
To: yocto@yoctoproject.org
Subject: With my layer, Systemd not invoking my application at startup
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
X-List-Received-Date: Wed, 01 Jul 2015 03:36:01 -0000
Content-Type: multipart/alternative; boundary=001a114e61e858afee0519c80533

--001a114e61e858afee0519c80533
Content-Type: text/plain; charset=UTF-8

Hi All,

I have  created a layer (my first layer) and have build it with WindRiver
media which uses Systemd for the startup services.

As per my application need, I have to create a new user on the final image
and change the owner permissions of certain files to the new user.
Since I could not get it done on the build machine, I have written the post
install script such that it gets executed on the  target board during the
1st boot cycle
and from within the post install script I am creating the new user and
changing the file ownership. And this works.

But the only problem I have now is that, even though I register my service
with Systemd at pre-install (or postinstall) section (using the systemctl
enable command)
my service is not getting launched by Systemd during the 1st boot. On
subsequent reboots, it invokes my service at boot up.

As part of debugging I just modified my postinstall script, such that it
gets executed on the board (i.e without the exit 1)  and not executed on
the 1st boot. After that I see that
systemd invokes my service at boot up.  So I wonder if Systemd ignores the
services for which post-install is not invoked at build machine ?

Now I am confused on how to solve this problem.

Only 2 approaches comes to my mind :
1) Run the postinstall on the board only (not on 1st boot)  - But with this
(i.e running the postinstall section on board) I don't see the new user
creation happening and as a result it fails to change the file ownership.

2) Somehow force systemd to invoke my service at startup (even with
postinstall running during 1st boot)  - But I don't know what I have to do
to achieve this.

Here is the brief of my recipe file :
-----------------------------------------------

DEPENDS += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd',
'systemd-systemctl-native', '', d)}"


do_install() {
------------
------------
#if systemd configured
install -m 0755 -d ${D}/lib/systemd/system
cp ${WORKDIR}/${MA_BIN_DIR}/my_ser.service ${D}/lib/systemd/system/
------------
------------
}

pkg_preinst_${PN}() {
------------
------------

if [  "$IS_SYSTEMD_CONFIGURED" = "yes" ] ; then
systemctl --root=$D enable my_ser.service    # Have tried executing it only
on postinstall, but it does not help.
fi
------------
------------
}

pkg_postinst_${PN}() {
------------
------------
if [  "$IS_SYSTEMD_CONFIGURED" = "yes" ] ; then
systemctl --root=$D enable ma.service
fi
 if [ x"$D" = "x" ] ; then
 # Create group and user
groupadd test_grp
useradd -r -s /sbin/nologin -g  test_grp test_usr
 chown test_usr:test_grp /etc/test_folder/*
 if [  "$IS_SYSTEMD_CONFIGURED" = "yes" ] ; then
if [ "$1" == 1 ] || [ "$1" = 2 ] ; then  # only install and upgrade
scenario, not to exeute on 1st boot
systemctl daemon-reload
systemctl start my_ser.service
fi
else
exit 1
fi
}

I am new to the yacto project and the layer approach. So kindly guide me on
how to resolve this issue.

Also if this is not the right group to get help on this issue, please
suggest about the relevant group.

Thanks
Vipin

--001a114e61e858afee0519c80533
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><br><div dir=3D"ltr">Hi All,<di=
v><br></div><div>I have =C2=A0created a layer (my first layer) and have bui=
ld it with WindRiver media which uses Systemd for the startup services.=C2=
=A0</div><div><br></div><div>As per my application need, I have to create a=
 new user on the final image and change the owner permissions of certain fi=
les to the new user.=C2=A0</div><div>Since I could not get it done on the b=
uild machine, I have written the post install script such that it gets exec=
uted on the =C2=A0target board during the 1st boot cycle</div><div>and from=
 within the post install script I am creating the new user and changing the=
 file ownership. And this works.=C2=A0</div><div><br></div><div>But the onl=
y problem I have now is that, even though I register my service with System=
d at pre-install (or postinstall) section (using the systemctl enable comma=
nd)</div><div>my service is not getting launched by Systemd during the 1st =
boot. On subsequent reboots, it invokes my service at boot up.=C2=A0</div><=
div><br></div><div>As part of debugging I just modified my postinstall scri=
pt, such that it gets executed on the board (i.e without the exit 1) =C2=A0=
and not executed on the 1st boot. After that I see that=C2=A0</div><div>sys=
temd invokes my service at boot up.=C2=A0 So I wonder if Systemd ignores th=
e services for which post-install is not invoked at build machine ?</div><d=
iv><br></div><div>Now I am confused on how to solve this problem.=C2=A0</di=
v><div><br></div><div>Only 2 approaches comes to my mind :=C2=A0</div><div>=
1) Run the postinstall on the board only (not on 1st boot) =C2=A0- But with=
 this (i.e running the postinstall section on board) I don&#39;t see the ne=
w user creation happening and as a result it fails to change the file owner=
ship.=C2=A0</div><div><br></div><div>2) Somehow force systemd to invoke my =
service at startup (even with postinstall running during 1st boot) =C2=A0- =
But I don&#39;t know what I have to do to achieve this.=C2=A0</div><div><br=
></div><div>Here is the brief of my recipe file :</div><div>---------------=
--------------------------------</div><div><br></div><div><div>DEPENDS +=3D=
 &quot;${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &#39;systemd&#39;, &=
#39;systemd-systemctl-native&#39;, &#39;&#39;, d)}&quot;</div><div><br></di=
v><div><br></div><div>do_install() { =C2=A0</div><div><span style=3D"white-=
space:pre-wrap">		</span>------------</div><div><span style=3D"white-space:=
pre-wrap">		</span>------------</div><div><span style=3D"white-space:pre-wr=
ap">		</span>#if systemd configured</div><div><span style=3D"white-space:pr=
e-wrap">		</span>install -m 0755 -d ${D}/lib/systemd/system<span style=3D"w=
hite-space:pre-wrap">						</span></div><div><span style=3D"white-space:pre=
-wrap">		</span>cp ${WORKDIR}/${MA_BIN_DIR}/my_ser.service ${D}/lib/systemd=
/system/</div><div><span style=3D"white-space:pre-wrap">		</span>----------=
--</div><div><span style=3D"white-space:pre-wrap">		</span>------------</di=
v><div>}</div><div><br></div><div>pkg_preinst_${PN}() {</div><div><span sty=
le=3D"white-space:pre-wrap">		</span>------------</div><div><span style=3D"=
white-space:pre-wrap">		</span>------------</div><div><br></div><div><span =
style=3D"white-space:pre-wrap">		</span>if [ =C2=A0&quot;$IS_SYSTEMD_CONFIG=
URED&quot; =3D &quot;yes&quot; ] ; then<span style=3D"white-space:pre-wrap"=
>						</span>=C2=A0</div><div><span style=3D"white-space:pre-wrap">			</sp=
an>systemctl --root=3D$D enable my_ser.service =C2=A0 =C2=A0# Have tried ex=
ecuting it only on postinstall, but it does not help.</div><div><span style=
=3D"white-space:pre-wrap">		</span>fi</div><div><span style=3D"white-space:=
pre-wrap">		</span>------------</div><div><span style=3D"white-space:pre-wr=
ap">		</span>------------</div><div>}</div><div><br></div><div>pkg_postinst=
_${PN}() {=C2=A0</div><div><span style=3D"white-space:pre-wrap">		</span>--=
----------</div><div><span style=3D"white-space:pre-wrap">		</span>--------=
----</div><div><span style=3D"white-space:pre-wrap">		</span>if [ =C2=A0&qu=
ot;$IS_SYSTEMD_CONFIGURED&quot; =3D &quot;yes&quot; ] ; then</div><div><spa=
n style=3D"white-space:pre-wrap">			</span>systemctl --root=3D$D enable ma.=
service</div><div><span style=3D"white-space:pre-wrap">		</span>fi</div><di=
v><span style=3D"white-space:pre-wrap">		</span></div><div><span style=3D"w=
hite-space:pre-wrap">		</span>if [ x&quot;$D&quot; =3D &quot;x&quot; ] ; th=
en</div><div><span style=3D"white-space:pre-wrap">		</span></div><div><span=
 style=3D"white-space:pre-wrap">			</span># Create group and user</div><div=
><span style=3D"white-space:pre-wrap">			</span>groupadd test_grp</div><div=
><span style=3D"white-space:pre-wrap">			</span>useradd -r -s /sbin/nologin=
 -g =C2=A0test_grp test_usr</div><div><span style=3D"white-space:pre-wrap">=
			</span></div><div><span style=3D"white-space:pre-wrap">			</span>chown t=
est_usr:test_grp /etc/test_folder/*</div><div><span style=3D"white-space:pr=
e-wrap">			</span></div><div><span style=3D"white-space:pre-wrap">			</span=
>if [ =C2=A0&quot;$IS_SYSTEMD_CONFIGURED&quot; =3D &quot;yes&quot; ] ; then=
<span style=3D"white-space:pre-wrap">								</span></div><div><span style=
=3D"white-space:pre-wrap">				</span>if [ &quot;$1&quot; =3D=3D 1 ] || [ &q=
uot;$1&quot; =3D 2 ] ; then =C2=A0# only install and upgrade scenario, not =
to exeute on 1st boot<span style=3D"white-space:pre-wrap">										</span>=
</div><div><span style=3D"white-space:pre-wrap">					</span>systemctl daemo=
n-reload=C2=A0</div><div><span style=3D"white-space:pre-wrap">					</span>s=
ystemctl start my_ser.service=C2=A0</div><div><span style=3D"white-space:pr=
e-wrap">			</span>fi<span style=3D"white-space:pre-wrap">			</span></div><d=
iv><span style=3D"white-space:pre-wrap">		</span>else</div><div><span style=
=3D"white-space:pre-wrap">			</span>exit 1</div><div><span style=3D"white-s=
pace:pre-wrap">		</span>fi</div><div>}</div><div><span style=3D"white-space=
:pre-wrap">		</span></div><div><br></div></div><div>I am new to the yacto p=
roject and the layer approach. So kindly guide me on how to resolve this is=
sue.=C2=A0</div><div><br></div><div>Also if this is not the right group to =
get help on this issue, please suggest about the relevant group.</div><div>=
<br></div><div>Thanks</div><span class=3D"HOEnZb"><font color=3D"#888888"><=
div>Vipin</div><div><br></div><div><br></div><div><br></div><div><br></div>=
<div><br></div><div><div><br></div><div><br></div></div></font></span></div=
>
</div><br></div>

--001a114e61e858afee0519c80533--

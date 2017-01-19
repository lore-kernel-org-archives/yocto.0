Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3778EE009D7; Wed, 18 Jan 2017 23:21:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.131 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.131 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8A94E009CF
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 23:21:42 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue003
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0LiYwK-1byLex2wiC-00cgFJ;
	Thu, 19 Jan 2017 08:21:39 +0100
From: <colin.helliwell@ln-systems.com>
To: "'Rick Altherr'" <raltherr@google.com>,
	"'Andre McCurdy'" <armccurdy@gmail.com>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
	<CAJ86T=Xx0Dt_Y6x+5Ujz=5-edNzFusrFa_oyrEOcZjW9mkCrkA@mail.gmail.com>
	<CAPLgG=myHpDap+GOgoNm6-vJncFj2WmkjwsVt+WCyjvQWY4qzw@mail.gmail.com>
In-Reply-To: <CAPLgG=myHpDap+GOgoNm6-vJncFj2WmkjwsVt+WCyjvQWY4qzw@mail.gmail.com>
Date: Thu, 19 Jan 2017 07:21:38 -0000
Organization: LN Systems Limited
Message-ID: <060101d27224$ad344a00$079cde00$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHftmx71IEooMCGrNMDnT4mUuYiOAMHaxycAYiQnzWhAFwSYA==
X-Provags-ID: V03:K0:07lwYNBR+ZcPA5xvm708g8eTAB+amvRBeb6+SjvtFUjousOkOKs
	+GdbNFW9S3TvGdxDpKsfDxsbwZrpsWKPVSAbc7Z0XFCau9bBcNefWLwdhlM14jD5pNk4Gvx
	5x9QZGRFFAF3HNfOc+AN6r46rBzqsk3sSDStYVqn4HIPDJRdl7nIDoBwzMrO1sRMJPgPNdm
	ujJCIC3xAJLbmHHgOXFfw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:66K0TbHuCX0=:biBNsTYjyORWAL82SektqA
	PFI/ki2wNaU+IwUhJc1PCIBzEfldMmhFr1gprMp5iUJ5edAE3igbRo+KIZIk4GquxAOPA+lNX
	wCnICcpyYFHbbSs1FfNx5sdVWoT20xDDQ3+LsEEu7Ts52oymR3unZDfRYYgEqwGPLahkrtJa8
	N0RgRN6R49A1wEvCEY4H+IKavC7jLtRPn+YhGaS8Y+fBAylPgE23Yo0bsipn30cR6Nf05jQQQ
	SmIYPkeTgXxjZKI2ZxlRb0mDL021nS5zWD1pU31f6sp+Xtt0m362t6ZckStNnenmangghfImV
	aEsuTdEOqDt4U0DNIdNDlgbhINwQca467tFmacPuiGh9aSoLTIfUzuaV936lyJqrStaXL2pfO
	hH86kzmU/lUOjHcCs4rsjUbnb3FICqrEviPg4Xt3rzwtIb5FlNAPergVfPsTKuLPDdhDtEY1e
	pMNQchFg5PYeGKOM5mBjqshPDtmKhYx3wnAShzqMSQU9J8LdY9tbuDZPcrg0Gv58KRfSvm8mS
	u+b85BffthjEZS7CHBgYDQj8C2dP9MZjdVU0VcPsGL9JfBiFCJvk2UQmKVQz3kXsI083Po45c
	8aLr4Iud1cdBLAA7INzU5tNaien5R8ACudUt9XH7iT8jAdWhK46tWOD6herZOe9XGCcothpFX
	+PtQU7DIy2E9RNWgdKElnq+r2LbkR8TDN/Lg9uytbnSNeZHu9hKK64kYL80u9qw2jKPa6xTf0
	ZNgDjCIn6z20IS7v
Cc: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: Re: Changing over to systemd (no dhcp)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 Jan 2017 07:21:44 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0602_01D27224.AD392C00"
Content-Language: en-gb

------=_NextPart_000_0602_01D27224.AD392C00
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I=E2=80=99d agree with that, Rick.

We run automated regression builds from a fresh version control checkout =
=E2=80=93 but because local.conf is generated when the build environment =
is set up, it isn=E2=80=99t suitable for version control. So any mods to =
it found during development have to be (remembered to be) put into =
local.conf.sample, so that the same build is assured for anyone =
anywhere.

I=E2=80=99ve long felt/assumed that local.conf was for truly local mods, =
for that user and/or for their temporary try-outs.

Similarly =E2=80=93 and this is going even more off-topic so =
I=E2=80=99ll save the detail for a separate thread =E2=80=93 =
I=E2=80=99ve still not yet got to grips with whether, when I want to add =
a particular package, I should be modifying my image recipe or set up a =
custom distro)

=20

From: Rick Altherr [mailto:raltherr@google.com]=20
Sent: 19 January 2017 00:22
To: Andre McCurdy <armccurdy@gmail.com>
Cc: colin.helliwell@ln-systems.com; Yocto discussion list =
<yocto@yoctoproject.org>
Subject: Re: [yocto] Changing over to systemd (no dhcp)

=20

I was wondering about this recently.  Why are these snippets put in =
local.conf.sample.extended instead of separate, well-named .inc files =
that can be shared by multiple distros?  The current model seems to =
encourage putting lots of configuration in local.conf that probably =
should be in the distro or machine conf.

=20

Rick

=20

On Wed, Jan 18, 2017 at 1:35 PM, Andre McCurdy <armccurdy@gmail.com =
<mailto:armccurdy@gmail.com> > wrote:

On Wed, Jan 18, 2017 at 7:10 AM,  <colin.helliwell@ln-systems.com =
<mailto:colin.helliwell@ln-systems.com> > wrote:

> We have a configuration for our embedded system which is working via =
SysV,
> but we=E2=80=99re investigating moving over to systemd.
>
> Not sure if this is =E2=80=98wise=E2=80=99 =E2=80=93 if anyone has =
technological arguments
> for/against then I=E2=80=99d be interested =E2=80=93 but I wanted to =
investigate it anyway.
>
> I=E2=80=99ve modified local.conf (right or wrong) with
>
>   DISTRO_FEATURES_append =3D " systemd"
>   VIRTUAL-RUNTIME_init_manager =3D "systemd"
>   DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
>   VIRTUAL-RUNTIME_initscripts =3D ""
>   KERNEL_ENABLE_CGROUPS =3D "1"
>
> I also found a readme
> (https://cgit.freedesktop.org/systemd/systemd/tree/README#n37) about =
the
> kernel requirements for systemd, and it does at least now boot.
>
> However although eth0 is coming up (=E2=80=98ifconfig eth0=E2=80=99), =
there doesn=E2=80=99t seem to
> be any dhcp happening =E2=80=93 no IP etc.
>
> Previously (under SysV) I had the busybox dhcp client; now it seems =
that is
> missing. There=E2=80=99s a symlink =
/etc/systemd/system/busybox-udhcpc.service to
> /dev/null
>
> I=E2=80=99m using
>
>   Poky Jethro
>   Kernel 4.4.0
>   Busybox 1.23.2 (with =E2=80=98CONFIG_FEATURE_SYSTEMD=3Dy=E2=80=99)
>
> I wondered if this is just a simple switch I=E2=80=99m missing =
somewhere, or is
> there a whole load more modifications I need to dig into and =
hand-craft?
> (Was hoping for something =E2=80=98out of the box=E2=80=99=E2=80=A6.)

Try:

  VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"

Enabling systemd is somewhat documented by the example in
{meta-poky,openembedded-core/meta}/conf/local.conf.sample.extended,
which is:

#
# Use systemd for system initialization
#
# DISTRO_FEATURES_append =3D " systemd"
# DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"
# VIRTUAL-RUNTIME_init_manager =3D "systemd"
# VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>=20
https://lists.yoctoproject.org/listinfo/yocto

=20


------=_NextPart_000_0602_01D27224.AD392C00
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Yes, I=E2=80=99d agree with that, =
Rick.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>We run automated regression builds from a =
fresh version control checkout =E2=80=93 but because local.conf is =
generated when the build environment is set up, it isn=E2=80=99t =
suitable for version control. So any mods to it found during development =
have to be (remembered to be) put into local.conf.sample, so that the =
same build is assured for anyone anywhere.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>I=E2=80=99ve long felt/assumed that =
local.conf was for truly local mods, for that user and/or for their =
temporary try-outs.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Similarly =E2=80=93 and this is going even =
more off-topic so I=E2=80=99ll save the detail for a separate thread =
=E2=80=93 I=E2=80=99ve still not yet got to grips with whether, when I =
want to add a particular package, I should be modifying my image recipe =
or set up a custom distro)<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> Rick =
Altherr [mailto:raltherr@google.com] <br><b>Sent:</b> 19 January 2017 =
00:22<br><b>To:</b> Andre McCurdy =
&lt;armccurdy@gmail.com&gt;<br><b>Cc:</b> =
colin.helliwell@ln-systems.com; Yocto discussion list =
&lt;yocto@yoctoproject.org&gt;<br><b>Subject:</b> Re: [yocto] Changing =
over to systemd (no dhcp)<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>I was =
wondering about this recently.&nbsp; Why are these snippets put in =
local.conf.sample.extended instead of separate, well-named .inc files =
that can be shared by multiple distros?&nbsp; The current model seems to =
encourage putting lots of configuration in local.conf that probably =
should be in the distro or machine conf.<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Rick<o:p></o:p></p></div></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>On Wed, =
Jan 18, 2017 at 1:35 PM, Andre McCurdy &lt;<a =
href=3D"mailto:armccurdy@gmail.com" =
target=3D"_blank">armccurdy@gmail.com</a>&gt; =
wrote:<o:p></o:p></p><blockquote style=3D'border:none;border-left:solid =
#CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><p class=3DMsoNormal>On Wed, =
Jan 18, 2017 at 7:10 AM,&nbsp; &lt;<a =
href=3D"mailto:colin.helliwell@ln-systems.com">colin.helliwell@ln-systems=
.com</a>&gt; wrote:<o:p></o:p></p><div><div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>&gt; We have a configuration for our =
embedded system which is working via SysV,<br>&gt; but we=E2=80=99re =
investigating moving over to systemd.<br>&gt;<br>&gt; Not sure if this =
is =E2=80=98wise=E2=80=99 =E2=80=93 if anyone has technological =
arguments<br>&gt; for/against then I=E2=80=99d be interested =E2=80=93 =
but I wanted to investigate it anyway.<br>&gt;<br>&gt; I=E2=80=99ve =
modified local.conf (right or wrong) with<br>&gt;<br>&gt;&nbsp; =
&nbsp;DISTRO_FEATURES_append =3D &quot; systemd&quot;<br>&gt;&nbsp; =
&nbsp;VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<br>&gt;&nbsp; =
&nbsp;DISTRO_FEATURES_BACKFILL_CONSIDERED =3D =
&quot;sysvinit&quot;<br>&gt;&nbsp; &nbsp;VIRTUAL-RUNTIME_initscripts =3D =
&quot;&quot;<br>&gt;&nbsp; &nbsp;KERNEL_ENABLE_CGROUPS =3D =
&quot;1&quot;<br>&gt;<br>&gt; I also found a readme<br>&gt; (<a =
href=3D"https://cgit.freedesktop.org/systemd/systemd/tree/README#n37" =
target=3D"_blank">https://cgit.freedesktop.org/systemd/systemd/tree/READM=
E#n37</a>) about the<br>&gt; kernel requirements for systemd, and it =
does at least now boot.<br>&gt;<br>&gt; However although eth0 is coming =
up (=E2=80=98ifconfig eth0=E2=80=99), there doesn=E2=80=99t seem =
to<br>&gt; be any dhcp happening =E2=80=93 no IP etc.<br>&gt;<br>&gt; =
Previously (under SysV) I had the busybox dhcp client; now it seems that =
is<br>&gt; missing. There=E2=80=99s a symlink =
/etc/systemd/system/busybox-udhcpc.service to<br>&gt; =
/dev/null<br>&gt;<br>&gt; I=E2=80=99m using<br>&gt;<br>&gt;&nbsp; =
&nbsp;Poky Jethro<br>&gt;&nbsp; &nbsp;Kernel 4.4.0<br>&gt;&nbsp; =
&nbsp;Busybox 1.23.2 (with =
=E2=80=98CONFIG_FEATURE_SYSTEMD=3Dy=E2=80=99)<br>&gt;<br>&gt; I wondered =
if this is just a simple switch I=E2=80=99m missing somewhere, or =
is<br>&gt; there a whole load more modifications I need to dig into and =
hand-craft?<br>&gt; (Was hoping for something =E2=80=98out of the =
box=E2=80=99=E2=80=A6.)<o:p></o:p></p></div></div><p =
class=3DMsoNormal>Try:<br><br>&nbsp; VIRTUAL-RUNTIME_initscripts =3D =
&quot;systemd-compat-units&quot;<br><br>Enabling systemd is somewhat =
documented by the example =
in<br>{meta-poky,openembedded-core/meta}/conf/local.conf.sample.extended,=
<br>which is:<br><br>#<br># Use systemd for system =
initialization<br>#<br># DISTRO_FEATURES_append =3D &quot; =
systemd&quot;<br># DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D =
&quot;sysvinit&quot;<br># VIRTUAL-RUNTIME_init_manager =3D =
&quot;systemd&quot;<br># VIRTUAL-RUNTIME_initscripts =3D =
&quot;systemd-compat-units&quot;<o:p></o:p></p><div><div><p =
class=3DMsoNormal>--<br>_______________________________________________<b=
r>yocto mailing list<br><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><o:p><=
/o:p></p></div></div></blockquote></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></body></html>

------=_NextPart_000_0602_01D27224.AD392C00--

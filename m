Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62246E009F3; Thu, 19 Jan 2017 02:07:02 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBAA5E009DB
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:06:58 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue003
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0MJYS7-1cXAQ43Vhz-0033mT;
	Thu, 19 Jan 2017 11:06:51 +0100
From: <colin.helliwell@ln-systems.com>
To: "'ChenQi'" <Qi.Chen@windriver.com>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
	<CAJ86T=Xx0Dt_Y6x+5Ujz=5-edNzFusrFa_oyrEOcZjW9mkCrkA@mail.gmail.com>
	<CAPLgG=myHpDap+GOgoNm6-vJncFj2WmkjwsVt+WCyjvQWY4qzw@mail.gmail.com>
	<060101d27224$ad344a00$079cde00$@ln-systems.com>
	<53576169-6d7a-5db2-72c7-20e8d04ab5c5@windriver.com>
In-Reply-To: <53576169-6d7a-5db2-72c7-20e8d04ab5c5@windriver.com>
Date: Thu, 19 Jan 2017 10:06:50 -0000
Organization: LN Systems Limited
Message-ID: <069b01d2723b$c14be860$43e3b920$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHftmx71IEooMCGrNMDnT4mUuYiOAMHaxycAYiQnzUArlHioQJ0NfAEoOd1uCA=
X-Provags-ID: V03:K0:d5beNwA5ZNK2wI11UM00mqiRscSFsHA9u9pimoiFjefkS4ToFEm
	5frEckDsm3fBXY4jau0wfMGnSzOPU4Paj5HlUdBmghU1yfXsh9Xs37LbBS3NF1qyr6BnC4N
	baIvLi9iTeikviMhoFKC0mdOTwct7sFE5ESXvfsrJOwkMeGurGjKNW6ClARPNKKtxdZzT8A
	kRQf0El0Gde8Jrg5yfMvQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:IB8+nAhm0v0=:hfsEDTd5T01+f9HxMG780A
	EOkMBS/E9IAskAS+izX97BeFeG4Qhk2AI+/EsUsb6eqvx7sn+X+yWLkMas0+HbVe1wDWUpYd+
	4FdO/f2Gbu4fiy6PHWIYqdnt8e0fiGN6nQ+OzZfH5OUMUvUaHp54zgtjBgeSQm7KbTpsr2s4E
	EBl36wmpuamGOtQlAt7omPGiZow0lXxmzEBmIgRnlZRL0NUs861vco0FyKC86XwiSmyENwJmq
	6ZhZpXzyVRqfZCNQcwDmQvPl6Y9bcVvGvmG/xuhV9YLWRlw+/k0KuMrDgoMQkt4Dr4n89RnDq
	cMEB2ltis0rLrRakHgZBC/BktBslUrSpeWf/kwcuRmTCqHkKWzpO0OJXXiE6mBR9cvnHOwQfp
	CAM9Dn7YCw8a43MB+3KTVq127rxD44mqigjzvPybh25Q5WjX9RPYfzxtnVZc16UyfLm7EUHb6
	Uhxpnee/yocIGwuLTUFLxpwoVRn2xoE02nReJeLnYytHHYk3XRl5F97fbxYcvR2S67uverHKO
	qebXoM7py7nWxCFjEDYY9Nwz+wceqPIqeHknh9Tq9x/JNeaSO0qcznSbW5+hf6yGpHHljppy5
	ChBz23XIAPwfL2xwDd9dAwak8ooY+XvIN2gO4+wgruSlKCeCDS+vC/Vpo609/thcHGd63SgA7
	vjoGHwqQykaWgpDREH6caOfgmQ2Nv5FyUH150mRA+CQjjnAtoDPrbWv8uR9lRwgwmJ3cglJ9W
	b4oH+ACgedLga8cZ
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
X-List-Received-Date: Thu, 19 Jan 2017 10:07:02 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_069C_01D2723B.C14E3250"
Content-Language: en-gb

------=_NextPart_000_069C_01D2723B.C14E3250
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks Chen.

Currently looking into getting networkd hooked in. (no luck yet!)

I'll also look into moving stuff from local.conf to elsewhere, but where you
say "Distro conf files are not suitable for such kinds of modification", I'm
wondering what sort of modifications they *are* suitable/intended for? (i.e.
the purpose of a distro as opposed to an image recipe)

 

From: ChenQi [mailto:Qi.Chen@windriver.com] 
Sent: 19 January 2017 08:32
To: colin.helliwell@ln-systems.com; 'Rick Altherr' <raltherr@google.com>;
'Andre McCurdy' <armccurdy@gmail.com>
Cc: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: Re: [yocto] Changing over to systemd (no dhcp)

 

Hi Colin,

For the dhcp problem, what you need is a network manager. Any network
manager that supports dhcp would do the job. systemd-networkd might be
sufficient in your case.

For the local.conf problem, you could use a layer to manage all common
things shared by the team.

For the package adding problem, it depends on the purpose.
1) if adding the package is only for local work (dev or test), do it in
local.conf
2) otherwise, do it in image recipe
Distro conf files are not suitable for such kinds of modification.

Best Regards,
Chen Qi

On 01/19/2017 03:21 PM, colin.helliwell@ln-systems.com
<mailto:colin.helliwell@ln-systems.com>  wrote:

Yes, I'd agree with that, Rick.

We run automated regression builds from a fresh version control checkout -
but because local.conf is generated when the build environment is set up, it
isn't suitable for version control. So any mods to it found during
development have to be (remembered to be) put into local.conf.sample, so
that the same build is assured for anyone anywhere.

I've long felt/assumed that local.conf was for truly local mods, for that
user and/or for their temporary try-outs.

Similarly - and this is going even more off-topic so I'll save the detail
for a separate thread - I've still not yet got to grips with whether, when I
want to add a particular package, I should be modifying my image recipe or
set up a custom distro)

 

From: Rick Altherr [mailto:raltherr@google.com] 
Sent: 19 January 2017 00:22
To: Andre McCurdy  <mailto:armccurdy@gmail.com> <armccurdy@gmail.com>
Cc: colin.helliwell@ln-systems.com <mailto:colin.helliwell@ln-systems.com> ;
Yocto discussion list  <mailto:yocto@yoctoproject.org>
<yocto@yoctoproject.org>
Subject: Re: [yocto] Changing over to systemd (no dhcp)

 

I was wondering about this recently.  Why are these snippets put in
local.conf.sample.extended instead of separate, well-named .inc files that
can be shared by multiple distros?  The current model seems to encourage
putting lots of configuration in local.conf that probably should be in the
distro or machine conf.

 

Rick

 

On Wed, Jan 18, 2017 at 1:35 PM, Andre McCurdy <armccurdy@gmail.com
<mailto:armccurdy@gmail.com> > wrote:

On Wed, Jan 18, 2017 at 7:10 AM,  <colin.helliwell@ln-systems.com
<mailto:colin.helliwell@ln-systems.com> > wrote:

> We have a configuration for our embedded system which is working via SysV,
> but we're investigating moving over to systemd.
>
> Not sure if this is 'wise' - if anyone has technological arguments
> for/against then I'd be interested - but I wanted to investigate it
anyway.
>
> I've modified local.conf (right or wrong) with
>
>   DISTRO_FEATURES_append = " systemd"
>   VIRTUAL-RUNTIME_init_manager = "systemd"
>   DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
>   VIRTUAL-RUNTIME_initscripts = ""
>   KERNEL_ENABLE_CGROUPS = "1"
>
> I also found a readme
> (https://cgit.freedesktop.org/systemd/systemd/tree/README#n37) about the
> kernel requirements for systemd, and it does at least now boot.
>
> However although eth0 is coming up ('ifconfig eth0'), there doesn't seem
to
> be any dhcp happening - no IP etc.
>
> Previously (under SysV) I had the busybox dhcp client; now it seems that
is
> missing. There's a symlink /etc/systemd/system/busybox-udhcpc.service to
> /dev/null
>
> I'm using
>
>   Poky Jethro
>   Kernel 4.4.0
>   Busybox 1.23.2 (with 'CONFIG_FEATURE_SYSTEMD=y')
>
> I wondered if this is just a simple switch I'm missing somewhere, or is
> there a whole load more modifications I need to dig into and hand-craft?
> (Was hoping for something 'out of the box'..)

Try:

  VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"

Enabling systemd is somewhat documented by the example in
{meta-poky,openembedded-core/meta}/conf/local.conf.sample.extended,
which is:

#
# Use systemd for system initialization
#
# DISTRO_FEATURES_append = " systemd"
# DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
# VIRTUAL-RUNTIME_init_manager = "systemd"
# VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org <mailto:yocto@yoctoproject.org> 
https://lists.yoctoproject.org/listinfo/yocto

 





 


------=_NextPart_000_069C_01D2723B.C14E3250
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
	font-family:"Times New Roman",serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]--></head><body bgcolor=3Dwhite =
lang=3DEN-GB link=3Dblue vlink=3Dpurple><div class=3DWordSection1><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Thanks Chen.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Currently looking into getting networkd =
hooked in. (no luck yet!)<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>I&#8217;ll also look into moving stuff from =
local.conf to elsewhere, but where you say &#8220;Distro conf files are =
not suitable for such kinds of modification&#8221;, I&#8217;m wondering =
what sort of modifications they *are* suitable/intended for? (i.e. the =
purpose of a distro as opposed to an image =
recipe)<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:windowte=
xt'>From:</span></b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:windowte=
xt'> ChenQi [mailto:Qi.Chen@windriver.com] <br><b>Sent:</b> 19 January =
2017 08:32<br><b>To:</b> colin.helliwell@ln-systems.com; 'Rick Altherr' =
&lt;raltherr@google.com&gt;; 'Andre McCurdy' =
&lt;armccurdy@gmail.com&gt;<br><b>Cc:</b> 'Yocto discussion list' =
&lt;yocto@yoctoproject.org&gt;<br><b>Subject:</b> Re: [yocto] Changing =
over to systemd (no dhcp)<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>Hi =
Colin,<br><br>For the dhcp problem, what you need is a network manager. =
Any network manager that supports dhcp would do the job. =
systemd-networkd might be sufficient in your case.<br><br>For the =
local.conf problem, you could use a layer to manage all common things =
shared by the team.<br><br>For the package adding problem, it depends on =
the purpose.<br>1) if adding the package is only for local work (dev or =
test), do it in local.conf<br>2) otherwise, do it in image =
recipe<br>Distro conf files are not suitable for such kinds of =
modification.<br><br>Best Regards,<br>Chen Qi<br><br>On 01/19/2017 03:21 =
PM, <a =
href=3D"mailto:colin.helliwell@ln-systems.com">colin.helliwell@ln-systems=
.com</a> wrote:<o:p></o:p></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Yes, I&#8217;d agree with that, =
Rick.</span><o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>We run automated regression builds from a =
fresh version control checkout &#8211; but because local.conf is =
generated when the build environment is set up, it isn&#8217;t suitable =
for version control. So any mods to it found during development have to =
be (remembered to be) put into local.conf.sample, so that the same build =
is assured for anyone anywhere.</span><o:p></o:p></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>I&#8217;ve long felt/assumed that local.conf =
was for truly local mods, for that user and/or for their temporary =
try-outs.</span><o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Similarly &#8211; and this is going even =
more off-topic so I&#8217;ll save the detail for a separate thread =
&#8211; I&#8217;ve still not yet got to grips with whether, when I want =
to add a particular package, I should be modifying my image recipe or =
set up a custom distro)</span><o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> Rick =
Altherr [<a =
href=3D"mailto:raltherr@google.com">mailto:raltherr@google.com</a>] =
<br><b>Sent:</b> 19 January 2017 00:22<br><b>To:</b> Andre McCurdy <a =
href=3D"mailto:armccurdy@gmail.com">&lt;armccurdy@gmail.com&gt;</a><br><b=
>Cc:</b> <a =
href=3D"mailto:colin.helliwell@ln-systems.com">colin.helliwell@ln-systems=
.com</a>; Yocto discussion list <a =
href=3D"mailto:yocto@yoctoproject.org">&lt;yocto@yoctoproject.org&gt;</a>=
<br><b>Subject:</b> Re: [yocto] Changing over to systemd (no =
dhcp)</span><o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><div><p class=3DMsoNormal>I was =
wondering about this recently.&nbsp; Why are these snippets put in =
local.conf.sample.extended instead of separate, well-named .inc files =
that can be shared by multiple distros?&nbsp; The current model seems to =
encourage putting lots of configuration in local.conf that probably =
should be in the distro or machine conf.<o:p></o:p></p><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Rick<o:p></o:p></p></div></div><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><div><p class=3DMsoNormal>On Wed, =
Jan 18, 2017 at 1:35 PM, Andre McCurdy &lt;<a =
href=3D"mailto:armccurdy@gmail.com" =
target=3D"_blank">armccurdy@gmail.com</a>&gt; =
wrote:<o:p></o:p></p><blockquote style=3D'border:none;border-left:solid =
#CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-bottom:5=
.0pt'><p class=3DMsoNormal>On Wed, Jan 18, 2017 at 7:10 AM,&nbsp; &lt;<a =
href=3D"mailto:colin.helliwell@ln-systems.com">colin.helliwell@ln-systems=
.com</a>&gt; wrote:<o:p></o:p></p><div><div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>&gt; We have a configuration for our =
embedded system which is working via SysV,<br>&gt; but we&#8217;re =
investigating moving over to systemd.<br>&gt;<br>&gt; Not sure if this =
is &#8216;wise&#8217; &#8211; if anyone has technological =
arguments<br>&gt; for/against then I&#8217;d be interested &#8211; but I =
wanted to investigate it anyway.<br>&gt;<br>&gt; I&#8217;ve modified =
local.conf (right or wrong) with<br>&gt;<br>&gt;&nbsp; =
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
up (&#8216;ifconfig eth0&#8217;), there doesn&#8217;t seem to<br>&gt; be =
any dhcp happening &#8211; no IP etc.<br>&gt;<br>&gt; Previously (under =
SysV) I had the busybox dhcp client; now it seems that is<br>&gt; =
missing. There&#8217;s a symlink =
/etc/systemd/system/busybox-udhcpc.service to<br>&gt; =
/dev/null<br>&gt;<br>&gt; I&#8217;m using<br>&gt;<br>&gt;&nbsp; =
&nbsp;Poky Jethro<br>&gt;&nbsp; &nbsp;Kernel 4.4.0<br>&gt;&nbsp; =
&nbsp;Busybox 1.23.2 (with =
&#8216;CONFIG_FEATURE_SYSTEMD=3Dy&#8217;)<br>&gt;<br>&gt; I wondered if =
this is just a simple switch I&#8217;m missing somewhere, or is<br>&gt; =
there a whole load more modifications I need to dig into and =
hand-craft?<br>&gt; (Was hoping for something &#8216;out of the =
box&#8217;&#8230;.)<o:p></o:p></p></div></div><p =
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
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div><p =
class=3DMsoNormal><br><br><o:p></o:p></p></blockquote><p><o:p>&nbsp;</o:p=
></p></div></body></html>

------=_NextPart_000_069C_01D2723B.C14E3250--

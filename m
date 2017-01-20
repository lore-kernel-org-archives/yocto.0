Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26428E00A21; Fri, 20 Jan 2017 06:12:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_05,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.17.24 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.17.24 listed in dnsbl.sorbs.net]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0298]
X-Greylist: delayed 758 seconds by postgrey-1.32 at yocto-www;
	Fri, 20 Jan 2017 06:12:40 PST
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64C0EE009CA
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 06:12:40 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue104
	[212.227.15.179]) with ESMTPSA (Nemesis) id 0MSJlD-1cx0TT35MR-00TWoP
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 15:00:00 +0100
From: <colin.helliwell@ln-systems.com>
To: "'Yocto discussion list'" <yocto@yoctoproject.org>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
	<CAJ86T=Xx0Dt_Y6x+5Ujz=5-edNzFusrFa_oyrEOcZjW9mkCrkA@mail.gmail.com>
	<CAPLgG=myHpDap+GOgoNm6-vJncFj2WmkjwsVt+WCyjvQWY4qzw@mail.gmail.com>
	<060101d27224$ad344a00$079cde00$@ln-systems.com>
	<53576169-6d7a-5db2-72c7-20e8d04ab5c5@windriver.com>
	<069b01d2723b$c14be860$43e3b920$@ln-systems.com>
	<19c3b372-c26a-85b5-9dea-f3b4524437df@windriver.com>
In-Reply-To: <19c3b372-c26a-85b5-9dea-f3b4524437df@windriver.com>
Date: Fri, 20 Jan 2017 13:59:59 -0000
Organization: LN Systems Limited
Message-ID: <093001d27325$7dc14cd0$7943e670$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHftmx71IEooMCGrNMDnT4mUuYiOAMHaxycAYiQnzUArlHioQJ0NfAEAmWA6MIBhWNA5qDJ6h5A
X-Provags-ID: V03:K0:zEhU1KkjCd161cz4D9kzXW0+SaFfPjH/c7Pc8Pjbzp2FlsrYIH8
	ND6rb5dyR+AoCDl26qPUeRgJtPp8xVungDAs58NKRBg4yKAgiFq8YXQ6QGJypyeoz19R/Na
	s68AxK6wJi226GR3E0R3bhNYQImzZTYKrrjKoUh7/i60xzgalLWXZX8sR4DM4o0qLAVKoQY
	Zf48xkv5X8Ozcw5dIe6AQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:eiTX4Sg+xEo=:cOvhluc/nvWMoBGQhIaaZY
	ZWHr2P5wEozB3MhPM5e+QoxfYVixWKiyvW8Cpzd1lQ0BZf+C3cIKw3qkE49fLVilAlWPrGxCW
	hU8VTqZKpUK65AZ3zTf2vFBmAhnvl377T3YaNZmWroSLspl5BBx3c6x4oi6xiGSIxW0bbf0gX
	cAoRYVe9tCSeFgLC+GC7fvGyVaCEa+eVkLXh0Je7aOjdrz9SecGxoMXikvl+BeLgnEV+4Aski
	jzQVMozQzbunxHZJemkcnJJ6zoNlpSOcGaE9slIAKYKksSKun++GOG/as3SoSoHheM5K3Yqyy
	gEZybyXBlpaSW43o3+r1oixiuR/XKaT13QBzf8HAW/80/fuBj3TZstoAiIydfXrIG0cQXgI1a
	fSgUr8HxkEUl79q2XSTNgoBQGT8kecnLYJT3huUu0lhDxoSapCRd6Ofy2HzpcCVfXLGrN1KuV
	08U4y9/1Wt7oYagGTjDdLUbLVBjbNqFTPClJYdtJCdBhWgYBRd5pWEEiUZJf+j/dfdvBXu6O6
	9Ea/cOXXczYVTM+rw6rOF1yyy4e88QkrLKv65CnKAvObBKWvAtPHVn0j9H7My5uzNzCd13vb9
	w3HiDsfsitAj7Spmet+OUlZpWQFxBvG4c7GlQ+58bSdD/z5deUVLf/BJi9vygtc4Ip9TmWhEP
	AXL81sKZB99jKMg/VajqDlcEMPBptMGAx91SmQ9UG7emv+VumUvLi6EC8sJ7M1sI1HL/JGqeA
	c4+mEN8A1Pq2myck
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
X-List-Received-Date: Fri, 20 Jan 2017 14:12:43 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0931_01D27325.7DC2D370"
Content-Language: en-gb

------=_NextPart_000_0931_01D27325.7DC2D370
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks for all the pointers everyone. I've now got (in my distro conf):

DISTRO_FEATURES_append = " systemd"

DISTRO_FEATURES_remove = " sysvinit"

VIRTUAL-RUNTIME_init_manager = "systemd"

PREFERRED_PROVIDER_udev = "systemd"

PACKAGECONFIG_append_pn-systemd = " resolved networkd"

 

It's booting fine (if 'noisily'!) and starting up dhcp. 

I suspect there's also some de-cluttering needed e.g. init.d scripts still
being installed as well as a .service.  On that subject, is there some
clever syntax for a do_install() and/or recipe in order to control which
type of file is installed into rootfs?

 


------=_NextPart_000_0931_01D27325.7DC2D370
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
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
mso-fareast-language:EN-US'>Thanks for all the pointers everyone. =
I&#8217;ve now got (in my distro conf):<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>DISTRO_FEATURES_append =3D &quot; =
systemd&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>DISTRO_FEATURES_remove =3D &quot; =
sysvinit&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>VIRTUAL-RUNTIME_init_manager =3D =
&quot;systemd&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>PREFERRED_PROVIDER_udev =3D =
&quot;systemd&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>PACKAGECONFIG_append_pn-systemd =3D &quot; =
resolved networkd&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>It&#8217;s booting fine (if =
&#8216;noisily&#8217;!) and starting up dhcp. <o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>I suspect there&#8217;s also some =
de-cluttering needed e.g. init.d scripts still being installed as well =
as a .service.&nbsp; On that subject, is there some clever syntax for a =
do_install() and/or recipe in order to control which type of file is =
installed into rootfs?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p></div></body></ht=
ml>

------=_NextPart_000_0931_01D27325.7DC2D370--

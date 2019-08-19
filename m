Return-Path: <bhupendra.singh@ppsinternational.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E4D9E00D7E; Mon, 19 Aug 2019 00:48:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00, DATE_IN_PAST_03_06, 
	DKIM_INVALID, DKIM_SIGNED, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [182.50.132.193 listed in list.dnswl.org]
	*  1.6 DATE_IN_PAST_03_06 Date: is 3 to 6 hours before Received: date
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
X-Greylist: delayed 451 seconds by postgrey-1.32 at yocto-www;
	Mon, 19 Aug 2019 00:48:12 PDT
Received: from sg2nlshrout01.shr.prod.sin2.secureserver.net
	(sg2nlshrout01.shr.prod.sin2.secureserver.net [182.50.132.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96F3EE00C46
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 00:48:12 -0700 (PDT)
Received: from sg2plcpnl0208.prod.sin2.secureserver.net ([148.72.232.109])
	by : HOSTING RELAY : with ESMTP
	id zcHNhShVp1GTNzcHNhzwcf; Mon, 19 Aug 2019 00:40:37 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ppsinternational.in; s=default;
	h=Content-Type:MIME-Version:Message-ID:Date
	:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=L94VaaD9kRYjCEwjXMn+mvMolf2ICjZGNNfhO0DPD3g=;
	b=SBxqjGcQ8EOROfau+OHh9okKmU
	05TIfheheVdbKd6FHF/6JxdEv3WLEdDAG0cGUq1F1kLqNyYRO4LXRU39Tnvb0vs+qiXBmDWhAT6AH
	j7To3ECdHyMmwVQ8TWUnb2lcDgGeRwZXJXUNc46snaDO1+H6B4yd7E1/aA5NAcXfLLq1o2UzMrM8N
	TmhrmvcrzW7e4yD79t5pz7XJfEz8dXg6JEbzvPXzU8KKtYamz5ezT21mGF9Q0feYWqGpnzAIYcZxG
	Jj9VjaFy/Z8QbuFr9uLiu/l7UCFK/VePBO4MfqE4p7ezA1zSElrEeiZj4YU9AfpBd0v2w2Fvhaoly
	eLRjzdHQ==;
Received: from [103.76.136.42] (port=1549 helo=Bhupendra)
	by sg2plcpnl0208.prod.sin2.secureserver.net with esmtpa (Exim 4.92)
	(envelope-from <bhupendra.singh@ppsinternational.in>)
	id 1hzcGR-004jNr-A0
	for yocto@yoctoproject.org; Mon, 19 Aug 2019 00:39:39 -0700
From: "Bhupendra Singh" <bhupendra.singh@ppsinternational.in>
To: <yocto@yoctoproject.org>
Date: Mon, 19 Aug 2019 07:39:37 +0530
Message-ID: <000501d55633$28008060$78018120$@ppsinternational.in>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdVWMybvX7m0kMyhQOGOCORTGc41NA==
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - sg2plcpnl0208.prod.sin2.secureserver.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - ppsinternational.in
X-Get-Message-Sender-Via: sg2plcpnl0208.prod.sin2.secureserver.net: authenticated_id:
	bhupendra.singh@ppsinternational.in
X-Authenticated-Sender: sg2plcpnl0208.prod.sin2.secureserver.net: bhupendra.singh@ppsinternational.in
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfKce+QDFb4++ix6SksgZP43AhKW4dwa1EGvt/5kCUi1RK1Pwgoiezju3/7aWjbHVf/o0gdU2zL2InzhqUEObhH8OrI5WeHK7sZmumSdq8rPkYUDDg/rT
	GeNIENfvulwkarstXJ8qiqiXK22V1SOm3PFg5Saw2oMKgF1ZmhHXfSoMcc+0fcUfZfAmUCxcrzbjnWHNv+rTBxvFh/Z47mAIiXzI7+K0pm9xPN2/dxN6KSrV
Subject: Your GStreamer installation is missing a plug-in
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
X-List-Received-Date: Mon, 19 Aug 2019 07:48:14 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0006_01D55661.41B97FB0"
Content-Language: en-us

------=_NextPart_000_0006_01D55661.41B97FB0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Dear All

I am trying to make a Qt application QML-GUI that will show live streaming
of ip-camera. but when in run qt-application on my Embedded Device then I
got 

Some problem .   

 

(gst-plugin-scanner:1296): GStreamer-WARNING **: Failed to load plugin
'/usr/lib/gstreamer-0.10/libgstopengl.so': /usr/lib/libgstgl-0.10.so.1:
undefined symbol: gst_gl_shader_set_uniform_matrix_2x3fv

** (gst-plugin-scanner:1296): WARNING **: could not find config file
'/home/root/.config/gst-openmax.conf'.. using defaults!

(gst-plugin-scanner:1296): GLib-GObject-WARNING **: cannot register existing
type 'GstVorbisDec'

(gst-plugin-scanner:1296): GLib-CRITICAL **: g_once_init_leave: assertion
'result != 0' failed

(gst-plugin-scanner:1296): GStreamer-CRITICAL **: gst_element_register:
assertion 'g_type_is_a (type, GST_TYPE_ELEMENT)' failed

shared memfd open() failed: Function not implemented

Warning: "No decoder available for type 'application/x-rtp,
media=(string)video, payload=(int)35, clock-rate=(int)90000,
encoding-name=(string)H264, packetization-mode=(string)1,
profile-level-id=(string)4d0029,
sprop-parameter-sets=(string)\"Z00AKZpkA8ARPy4C1AQEFAg\\=\\,aO48gA\\=\\=\",
a-recvonly=(string)\"\", npt-start=(guint64)0, play-speed=(double)1,
play-scale=(double)1'."

Error: "Your GStreamer installation is missing a plug-in."

 

I am using -

Embedded Device(SOC) - Colibri-T20  (NVIDIA,Toradex)

Os -    Angstrom v2017.12 - Kernel   

            Colibri-T20_Qt5-X11-Image 2.8b6 20190816

 

Which package I am missing in my os

If am running this application on my Desktop it works correctly .

 

 

Thanks & Regards

Bhupendra Singh

 


------=_NextPart_000_0006_01D55661.41B97FB0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Dear All<o:p></o:p></p><p class=3DMsoNormal>I am =
trying to make a Qt application QML-GUI that will show live streaming of =
ip-camera. but when in run qt-application on my Embedded Device then I =
got <o:p></o:p></p><p class=3DMsoNormal>Some problem . =
&nbsp;&nbsp;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><span =
style=3D'background:yellow;mso-highlight:yellow'>(gst-plugin-scanner:1296=
): GStreamer-WARNING **: Failed to load plugin =
'/usr/lib/gstreamer-0.10/libgstopengl.so': /usr/lib/libgstgl-0.10.so.1: =
undefined symbol: =
gst_gl_shader_set_uniform_matrix_2x3fv<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'background:yellow;mso-highlight:yellow'>** =
(gst-plugin-scanner:1296): WARNING **: could not find config file =
'/home/root/.config/gst-openmax.conf'.. using =
defaults!<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'background:yellow;mso-highlight:yellow'>(gst-plugin-scanner:1296=
): GLib-GObject-WARNING **: cannot register existing type =
'GstVorbisDec'<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'background:yellow;mso-highlight:yellow'>(gst-plugin-scanner:1296=
): GLib-CRITICAL **: g_once_init_leave: assertion 'result !=3D 0' =
failed<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'background:yellow;mso-highlight:yellow'>(gst-plugin-scanner:1296=
): GStreamer-CRITICAL **: gst_element_register: assertion 'g_type_is_a =
(type, GST_TYPE_ELEMENT)' failed<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'background:yellow;mso-highlight:yellow'>shared memfd open() =
failed: Function not implemented<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'background:yellow;mso-highlight:yellow'>Warning: &quot;No =
decoder available for type 'application/x-rtp, media=3D(string)video, =
payload=3D(int)35, clock-rate=3D(int)90000, =
encoding-name=3D(string)H264, packetization-mode=3D(string)1, =
profile-level-id=3D(string)4d0029, =
sprop-parameter-sets=3D(string)\&quot;Z00AKZpkA8ARPy4C1AQEFAg\\=3D\\,aO48=
gA\\=3D\\=3D\&quot;, a-recvonly=3D(string)\&quot;\&quot;, =
npt-start=3D(guint64)0, play-speed=3D(double)1, =
play-scale=3D(double)1'.&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'background:yellow;mso-highlight:yellow'>Error: &quot;Your =
GStreamer installation is missing a =
plug-in.&quot;</span><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I am using =
&#8211;<o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'background:aqua;mso-highlight:aqua'>Embedded Device(SOC) =
&#8211;</span> <span =
style=3D'background:fuchsia;mso-highlight:fuchsia'>Colibri-T20&nbsp; =
(NVIDIA,Toradex)</span><o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'background:aqua;mso-highlight:aqua'>Os -</span> =
&nbsp;&nbsp;&nbsp;<span =
style=3D'background:lime;mso-highlight:lime'>Angstrom v2017.12 &#8211; =
Kernel &nbsp;&nbsp;<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'background:lime;mso-highlight:lime'>&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Colibri-T20_Qt5-X11-Image =
2.8b6 20190816</span><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Which =
package I am missing in my os<o:p></o:p></p><p class=3DMsoNormal>If am =
running this application on my Desktop it works correctly =
.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal =
style=3D'background:white'><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#5B9BD5'>Thanks &amp; Regards</span><span =
style=3D'font-size:9.5pt;font-family:"Arial",sans-serif;color:#5B9BD5'><o=
:p></o:p></span></p><p class=3DMsoNormal =
style=3D'background:white'><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif;color:#5B9BD5'>Bhupendra Singh</span><span =
style=3D'font-size:9.5pt;font-family:"Arial",sans-serif;color:#5B9BD5'><o=
:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0006_01D55661.41B97FB0--

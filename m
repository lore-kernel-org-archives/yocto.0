Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 292A3E00BE9; Tue,  1 Aug 2017 10:58:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mailrelay2-2.pub.mailoutpod1-cph3.one.com
	(mailrelay2-2.pub.mailoutpod1-cph3.one.com [46.30.212.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BA37E00944
	for <yocto@yoctoproject.org>; Tue,  1 Aug 2017 10:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:in-reply-to:
	references; bh=3SbzF/2w5R9LSiBtdukOQDcj2kBpaQ7yTrYt1ruc7SQ=;
	b=Lc57LoDfaW9qGRqpkmbTspZpEix8IUuH30ApK0vS05JBlUvJi6yv467AEXtv925Nhrzao9/oOe/I8
	AEUlyakoHS6caiJbvDBwG4syc4efB7HNfndH34AjASa6JUGQsX/ZecE49GkXmef8UTY2kqwcWrUdVG
	J/FDne27YfVeaRmM=
X-HalOne-Cookie: 28f19704f2907df3bf704dc3de1a4734d89e66f4
X-HalOne-ID: 068e8ea1-76e3-11e7-8b78-b82a72d03b9b
Received: from [192.168.1.10] (unknown [77.2.210.14])
	by smtpfilter2.public.one.com (Halon) with ESMTPSA
	id 068e8ea1-76e3-11e7-8b78-b82a72d03b9b;
	Tue, 01 Aug 2017 17:58:30 +0000 (UTC)
To: yocto@yoctoproject.org
References: <e2ca440119ec455b93e1317cc0e90823@EXCH13MB02.itwwelds.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <3e249149-3d1e-d159-678f-79f8e62a543b@embexus.com>
Date: Tue, 1 Aug 2017 19:58:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <e2ca440119ec455b93e1317cc0e90823@EXCH13MB02.itwwelds.com>
Subject: Re: Automount issues
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
X-List-Received-Date: Tue, 01 Aug 2017 17:58:34 -0000
Content-Type: multipart/alternative;
	boundary="------------EF04422983D7FA55F478F9FB"
Content-Language: en-US

--------------EF04422983D7FA55F478F9FB
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Yes ! I had this problem a while ago, I fixed the problem by changing in 
systemd-udev service the mountFlags to shared instead of slave:

here is a link to the mailing list discussion :

https://lists.yoctoproject.org/pipermail/yocto/2015-March/023879.html

-- 

Ayoub Zaki

ayoub.zaki at embexus.com <https://lists.yoctoproject.org/listinfo/yocto>

Mobile: +49(0)176-62901545

Skype: ayoub.zaki_2

https://embexus.com <https://embexus.com/>

On 01.08.2017 19:44, Jeremy Overesch wrote:
> Yes, I am using systemd.  Is there a known issue with it that I should 
> be aware of?
> Hi,
> are you using systemd ?
> On 01.08.2017 16:52, Jeremy Overesch wrote:
> >//
> >/I've been trying to get automounting of USB devices working using the /
> >/udev-extraconf recipe available in yocto.  It appears to work in the /
> >/mount.sh script, as I can read the contents of the drive.  However, /
> >/when I try to do so in a command shell, the folder is empty and the /
> >/drive doesn't show as mounted.  Also, even though it isn't mounted, if /
> >/I remove the drive and connect it to a windows PC or any other /
> >/machine, it claims that the file system is "dirty" and needs to be /
> >/scanned./
> >//
> >/In short, it is the *exact* same issue that's happening in this /
> >/thread, but there isn't a resolution: /
> >/https://lists.yoctoproject.org/pipermail/yocto/2015-September/026563.html/
> >//
> >/I've attached the following files:/
> >//
> >/automount.rules - udev automounting rules/
> >//
> >/journalctl_output.txt - what the journalctl shows after an insertion/
> >//
> >/mount.sh - my modified mount.sh script with the printfs/
> >//
> >/mount.sh.log - output of the mount.sh script for an insertion and /
> >/removal event/
> >//
> >/udevadm.test.txt - output from the test output of what would be run /
> >/for an insertion event/
> >//
> >/udevadm_monitor.txt - live output of the monitor when inserting a usb /
> >/stick./
> >//
> >/Any help would be greatly appreciated!/
> >//
> >//
> >/------------------------------------------------------------------------/
> >//
> >/This message (including any attachments) is intended for the sole use /
> >/of the intended recipient/s and may contain material that is /
> >/CONFIDENTIAL AND PRIVATE COMPANY INFORMATION. If you are not the /
> >/intended recipient of this message, you are hereby notified that you /
> >/must delete the message without disseminating, copying or taking any /
> >/action in reliance upon it. If you have received this message in /
> >/error, please notify the sender via return e-mail. Thank you./
> >//
> >//
>
>
> ------------------------------------------------------------------------
>
> This message (including any attachments) is intended for the sole use 
> of the intended recipient/s and may contain material that is 
> CONFIDENTIAL AND PRIVATE COMPANY INFORMATION. If you are not the 
> intended recipient of this message, you are hereby notified that you 
> must delete the message without disseminating, copying or taking any 
> action in reliance upon it. If you have received this message in 
> error, please notify the sender via return e-mail. Thank you.
>
>

-- 

Ayoub Zaki

ayoub.zaki@embexus.com
Mobile: +49(0)176-62901545
Skype: ayoub.zaki_2
https://embexus.com


--------------EF04422983D7FA55F478F9FB
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Yes ! I had this problem a while ago, I fixed the problem by
      changing in systemd-udev service the mountFlags to shared instead
      of slave:</p>
    here is a link to the mailing list discussion :<br>
    <br>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/pipermail/yocto/2015-March/023879.html">https://lists.yoctoproject.org/pipermail/yocto/2015-March/023879.html</a><br>
    <br>
    <pre><span style="color:black"> </span></pre>
    <pre><span style="color:black">-- </span></pre>
    <pre><span style="color:black"> </span></pre>
    <pre><span style="color:black">Ayoub Zaki</span></pre>
    <pre><span style="color:black"> </span></pre>
    <pre><span style="color:black"><a href="https://lists.yoctoproject.org/listinfo/yocto">ayoub.zaki at embexus.com</a></span></pre>
    <pre><span style="color:black">Mobile: +49(0)176-62901545</span></pre>
    <pre><span style="color:black">Skype: ayoub.zaki_2</span></pre>
    <pre><span style="color:black"><a href="https://embexus.com/">https://embexus.com</a>

</span></pre>
    <div class="moz-cite-prefix">On 01.08.2017 19:44, Jeremy Overesch
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:e2ca440119ec455b93e1317cc0e90823@EXCH13MB02.itwwelds.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
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
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <pre><span style="color:black">Yes, I am using systemd.  Is there a known issue with it that I should be aware of?<o:p></o:p></span></pre>
        <div
          style="mso-element:para-border-div;border:none;border-bottom:solid
          windowtext 1.0pt;padding:0in 0in 1.0pt 0in">
          <pre style="border:none;padding:0in"><span style="color:black"><o:p> </o:p></span></pre>
        </div>
        <pre><span style="color:black"><o:p> </o:p></span></pre>
        <pre><span style="color:black">Hi,<o:p></o:p></span></pre>
        <pre><span style="color:black"><o:p> </o:p></span></pre>
        <pre><span style="color:black">are you using systemd ?<o:p></o:p></span></pre>
        <pre><span style="color:black"><o:p> </o:p></span></pre>
        <pre><span style="color:black"><o:p> </o:p></span></pre>
        <pre><span style="color:black">On 01.08.2017 16:52, Jeremy Overesch wrote:<o:p></o:p></span></pre>
        <pre><span style="color:black">&gt;<i><o:p> </o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> I've been trying to get automounting of USB devices working using the <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> udev-extraconf recipe available in yocto.  It appears to work in the <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> mount.sh script, as I can read the contents of the drive.  However, <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> when I try to do so in a command shell, the folder is empty and the <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> drive doesn't show as mounted.  Also, even though it isn't mounted, if <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> I remove the drive and connect it to a windows PC or any other <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> machine, it claims that the file system is "dirty" and needs to be <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> scanned.<o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i><o:p> </o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> In short, it is the *exact* same issue that's happening in this <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> thread, but there isn't a resolution: <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> <a href="https://lists.yoctoproject.org/pipermail/yocto/2015-September/026563.html" moz-do-not-send="true">https://lists.yoctoproject.org/pipermail/yocto/2015-September/026563.html</a><o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i><o:p> </o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> I've attached the following files:<o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i><o:p> </o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> automount.rules - udev automounting rules<o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i><o:p> </o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> journalctl_output.txt - what the journalctl shows after an insertion<o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i><o:p> </o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> mount.sh - my modified mount.sh script with the printfs<o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i><o:p> </o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> mount.sh.log - output of the mount.sh script for an insertion and <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> removal event<o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i><o:p> </o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> udevadm.test.txt - output from the test output of what would be run <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> for an insertion event<o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i><o:p> </o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> udevadm_monitor.txt - live output of the monitor when inserting a usb <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> stick.<o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i><o:p> </o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> Any help would be greatly appreciated!<o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i><o:p> </o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i><o:p> </o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> ------------------------------------------------------------------------<o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i><o:p> </o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> This message (including any attachments) is intended for the sole use <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> of the intended recipient/s and may contain material that is <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> CONFIDENTIAL AND PRIVATE COMPANY INFORMATION. If you are not the <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> intended recipient of this message, you are hereby notified that you <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> must delete the message without disseminating, copying or taking any <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> action in reliance upon it. If you have received this message in <o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i> error, please notify the sender via return e-mail. Thank you.<o:p></o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i><o:p> </o:p></i></span></pre>
        <pre><span style="color:black">&gt;<i><o:p> </o:p></i></span></pre>
        <span style="color:black"><o:p></o:p></span>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
      <hr>
      <font size="1" face="Arial" color="Gray"><br>
        This message (including any attachments) is intended for the
        sole use of the intended recipient/s and may contain material
        that is CONFIDENTIAL AND PRIVATE COMPANY INFORMATION. If you are
        not the intended recipient of this message, you are hereby
        notified that you must delete the message without disseminating,
        copying or taking any action in reliance upon it. If you have
        received this message in error, please notify the sender via
        return e-mail. Thank you.<br>
      </font>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 

Ayoub Zaki

<a class="moz-txt-link-abbreviated" href="mailto:ayoub.zaki@embexus.com">ayoub.zaki@embexus.com</a>
Mobile: +49(0)176-62901545
Skype: ayoub.zaki_2
<a class="moz-txt-link-freetext" href="https://embexus.com">https://embexus.com</a></pre>
  </body>
</html>

--------------EF04422983D7FA55F478F9FB--

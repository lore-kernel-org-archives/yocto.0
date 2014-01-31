Return-Path: <dv@pseudoterminal.org>
Received: from ptmx.org (ptmx.org [178.63.28.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51AE5E00303
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 10:45:46 -0800 (PST)
Received: from [192.168.178.101] (chello080108009040.14.11.vie.surfer.at
	[80.108.9.40]) by ptmx.org (Postfix) with ESMTPSA id 6F3DF251E9;
	Fri, 31 Jan 2014 19:45:42 +0100 (CET)
Message-ID: <52EBEFD7.4010805@pseudoterminal.org>
Date: Fri, 31 Jan 2014 19:47:51 +0100
From: Carlos Rafael Giani <dv@pseudoterminal.org>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: "Iorga, Cristian" <cristian.iorga@intel.com>, 
	Khaja Hussain Shaik <khajahussain-s@hcl.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"nicolas.dechesne@linaro.org" <nicolas.dechesne@linaro.org>
References: <31DD9473F5EB4E468EDC3B5642AD64BD08E3FE43@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
	<969F26A8BAB325438E7EB80D3C3134FB16CFA7B3@IRSMSX105.ger.corp.intel.com>
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB16CFA7B3@IRSMSX105.ger.corp.intel.com>
Cc: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>, "Kishore Divvela -ERS,
	HCL Tech" <kishore-d@hcl.com>
Subject: Re: MP4 Playback Issue with GST-1.0
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
X-List-Received-Date: Fri, 31 Jan 2014 18:45:50 -0000
Content-Type: multipart/alternative;
	boundary="------------070600090000010302050908"

--------------070600090000010302050908
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

it would also be useful to know if this happens on the PC as well. If 
so, then asking the GStreamer developers may be more appropiate.

Also, the GStreamer 1.0 version in Dora is 1.0.9 , while the one in 
master is 1.2.2. There have been significant h264 related fixes between 
these two.



On 31.01.2014 19:19, Iorga, Cristian wrote:
>
> Hi Khaja,
>
> There are several things you can do in order to solve this issue:
>
> 1.Please test with the latest master of poky if the issue is still 
> reproducible. Let us know of the result.
>
> 2.Open a bug report on bugzilla.yoctoproject.org .
>
> 3.State more info related to your issue: version of poky, version on 
> gstreamer1.0, your target hardware platform, BSP used, maybe other 
> meta-layers that are used (if applies).
>
> Also, please provide on a download site the sample that you use to 
> test playback.
>
> Please note that the fact that it works correctly with gstreamer-0.10 
> is not a testament of the fact the MP4 video sample used is indeed 
> correct from a more modern decoder point of view.
>
> In which case it might explain the decoding artefacts.
>
> In the end, given the fact that it might be hard for us to reproduce 
> this issue (HW not available, etc), it will reduce to the saying: 
> "What have you tried?".
>
> Your help on this one is mightily needed.
>
> Regards,
>
> Cristian Iorga
>
> YP
>
> Intel
>
> *From:* Khaja Hussain Shaik [mailto:khajahussain-s@hcl.com]
> *Sent:* Thursday, January 30, 2014 2:33 PM
> *To:* yocto@yoctoproject.org; Carlos Rafael Giani; 
> paul.eggleton@linux.intel.com; nicolas.dechesne@linaro.org; Iorga, 
> Cristian
> *Cc:* Dipesh Karmakar; Kishore Divvela -ERS, HCL Tech
> *Subject:* FW: MP4 Playback Issue with GST-1.0
>
> Hi all,
>
> Did anybody get a chance to look into the below issue?
>
> Any suggestion would be greatly helpful.
>
> Thanks & Regards
>
> Khaja
>
> *From:*Khaja Hussain Shaik
> *Sent:* Tuesday, January 28, 2014 6:18 PM
> *To:* yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> *Cc:* Dipesh Karmakar; Kishore Divvela -ERS, HCL Tech; 'Carlos Rafael 
> Giani'
> *Subject:* MP4 Playback Issue with GST-1.0
>
> Hi All,
>
> We are having some mp4 playback issue with GST-1.0.
>
> Used port and commands:
>
> 1.Yocto Dora
>
> 2.GSTreamer 1.0
>
> 3.Command: gst-launch-1.0 playbin 
> uri=file:///home/Media_Sample/mp4Sample2.mp4
>
> Video playback is happening blur and majorly last 30%-40% video is 
> displayed in front and shows a zig-zag kind of pattern*. However using 
> gst-0.10 video playback happens properly*.
>
> Please see the attached snapshot of the problem. (Sorry for not be 
> able to explain the problem in writing)
>
> We have saved gst logs, also attached in this mail.
>
> Any suggestion will be a great help.
>
> Thanks & Regards,
>
> Khaja
>
>
>
> ::DISCLAIMER::
> ----------------------------------------------------------------------------------------------------------------------------------------------------
>
> The contents of this e-mail and any attachment(s) are confidential and 
> intended for the named recipient(s) only.
> E-mail transmission is not guaranteed to be secure or error-free as 
> information could be intercepted, corrupted,
> lost, destroyed, arrive late or incomplete, or may contain viruses in 
> transmission. The e mail and its contents
> (with or without referred errors) shall therefore not attach any 
> liability on the originator or HCL or its affiliates.
> Views or opinions, if any, presented in this email are solely those of 
> the author and may not necessarily reflect the
> views or opinions of HCL or its affiliates. Any form of reproduction, 
> dissemination, copying, disclosure, modification,
> distribution and / or publication of this message without the prior 
> written consent of authorized representative of
> HCL is strictly prohibited. If you have received this email in error 
> please delete it and notify the sender immediately.
> Before opening any email and/or attachments, please check them for 
> viruses and other defects.
>
> ----------------------------------------------------------------------------------------------------------------------------------------------------
>


--------------070600090000010302050908
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Hello,<br>
      <br>
      it would also be useful to know if this happens on the PC as well.
      If so, then asking the GStreamer developers may be more
      appropiate.<br>
      <br>
      Also, the GStreamer 1.0 version in Dora is 1.0.9 , while the one
      in master is 1.2.2. There have been significant h264 related fixes
      between these two.<br>
      <br>
      <br>
      <br>
      On 31.01.2014 19:19, Iorga, Cristian wrote:<br>
    </div>
    <blockquote
cite="mid:969F26A8BAB325438E7EB80D3C3134FB16CFA7B3@IRSMSX105.ger.corp.intel.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:988824609;
	mso-list-type:hybrid;
	mso-list-template-ids:2104145710 67698703 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1279677946;
	mso-list-type:hybrid;
	mso-list-template-ids:763518016 67698703 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span style="color:#1F497D">Hi Khaja,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">There are
            several things you can do in order to solve this issue:<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo3"><!--[if !supportLists]--><span
            style="color:#1F497D"><span style="mso-list:Ignore">1.<span
                style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </span></span></span><!--[endif]--><span
            style="color:#1F497D">Please test with the latest master of
            poky if the issue is still reproducible. Let us know of the
            result.<o:p></o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo3"><!--[if !supportLists]--><span
            style="color:#1F497D"><span style="mso-list:Ignore">2.<span
                style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </span></span></span><!--[endif]--><span
            style="color:#1F497D">Open a bug report on
            bugzilla.yoctoproject.org .<o:p></o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo3"><!--[if !supportLists]--><span
            style="color:#1F497D"><span style="mso-list:Ignore">3.<span
                style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </span></span></span><!--[endif]--><span
            style="color:#1F497D">State more info related to your issue:
            version of poky, version on gstreamer1.0, your target
            hardware platform, BSP used, maybe other meta-layers that
            are used (if applies).<o:p></o:p></span></p>
        <p class="MsoListParagraph"><span style="color:#1F497D">Also,
            please provide on a download site the sample that you use to
            test playback.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Please note
            that the fact that it works correctly with gstreamer-0.10 is
            not a testament of the fact the MP4 video sample used is
            indeed correct from a more modern decoder point of view.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">In which case
            it might explain the decoding artefacts.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">In the end,
            given the fact that it might be hard for us to reproduce
            this issue (HW not available, etc), it will reduce to the
            saying: &#8220;What have you tried?&#8221;.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Your help on
            this one is mightily needed.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Regards,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Cristian Iorga<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">YP<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Intel<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><a moz-do-not-send="true"
            name="_MailEndCompose"><span style="color:#1F497D"><o:p>&nbsp;</o:p></span></a></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b>From:</b> Khaja Hussain Shaik
              [<a class="moz-txt-link-freetext" href="mailto:khajahussain-s@hcl.com">mailto:khajahussain-s@hcl.com</a>]
              <br>
              <b>Sent:</b> Thursday, January 30, 2014 2:33 PM<br>
              <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>; Carlos Rafael Giani;
              <a class="moz-txt-link-abbreviated" href="mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a>;
              <a class="moz-txt-link-abbreviated" href="mailto:nicolas.dechesne@linaro.org">nicolas.dechesne@linaro.org</a>; Iorga, Cristian<br>
              <b>Cc:</b> Dipesh Karmakar; Kishore Divvela -ERS, HCL Tech<br>
              <b>Subject:</b> FW: MP4 Playback Issue with GST-1.0<o:p></o:p></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><span style="color:#1F497D">Hi all,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Did anybody get
            a chance to look into the below issue?<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Any suggestion
            would be greatly helpful.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Thanks &amp;
            Regards<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Khaja<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #B5C4DF
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
                Khaja Hussain Shaik
                <br>
                <b>Sent:</b> Tuesday, January 28, 2014 6:18 PM<br>
                <b>To:</b> <a moz-do-not-send="true"
                  href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                <b>Cc:</b> Dipesh Karmakar; Kishore Divvela -ERS, HCL
                Tech; 'Carlos Rafael Giani'<br>
                <b>Subject:</b> MP4 Playback Issue with GST-1.0<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Hi All,<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">We are having some mp4 playback issue with
          GST-1.0.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Used port and commands:<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l1 level1 lfo2"><!--[if !supportLists]--><span
            style="mso-list:Ignore">1.<span style="font:7.0pt
              &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span></span><!--[endif]-->Yocto Dora<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l1 level1 lfo2"><!--[if !supportLists]--><span
            style="mso-list:Ignore">2.<span style="font:7.0pt
              &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span></span><!--[endif]-->GSTreamer 1.0<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l1 level1 lfo2"><!--[if !supportLists]--><span
            style="mso-list:Ignore">3.<span style="font:7.0pt
              &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span></span><!--[endif]-->Command: gst-launch-1.0 playbin
          uri=<a class="moz-txt-link-freetext" href="file:///home/Media_Sample/mp4Sample2.mp4">file:///home/Media_Sample/mp4Sample2.mp4</a><o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Video playback is happening blur and
          majorly last 30%-40% video is displayed in front and shows a
          zig-zag kind of pattern<b>. However using gst-0.10 video
            playback happens properly</b>.<o:p></o:p></p>
        <p class="MsoNormal">Please see the attached snapshot of the
          problem. (Sorry for not be able to explain the problem in
          writing)<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">We have saved gst logs, also attached in
          this mail.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Any suggestion will be a great help.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Thanks &amp; Regards,<o:p></o:p></p>
        <p class="MsoNormal">Khaja<o:p></o:p></p>
        <p class="MsoNormal"><span style="color:gray"><br>
            <br>
          </span><span
style="font-size:7.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:gray">::DISCLAIMER::<br>
----------------------------------------------------------------------------------------------------------------------------------------------------</span><span
            style="color:gray"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:8.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:gray">The
            contents of this e-mail and any attachment(s) are
            confidential and intended for the named recipient(s) only.<br>
            E-mail transmission is not guaranteed to be secure or
            error-free as information could be intercepted, corrupted,
            <br>
            lost, destroyed, arrive late or incomplete, or may contain
            viruses in transmission. The e mail and its contents
            <br>
            (with or without referred errors) shall therefore not attach
            any liability on the originator or HCL or its affiliates.
            <br>
            Views or opinions, if any, presented in this email are
            solely those of the author and may not necessarily reflect
            the
            <br>
            views or opinions of HCL or its affiliates. Any form of
            reproduction, dissemination, copying, disclosure,
            modification,
            <br>
            distribution and / or publication of this message without
            the prior written consent of authorized representative of
            <br>
            HCL is strictly prohibited. If you have received this email
            in error please delete it and notify the sender immediately.
            <br>
            Before opening any email and/or attachments, please check
            them for viruses and other defects.</span><span
            style="color:gray"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:8.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:gray">----------------------------------------------------------------------------------------------------------------------------------------------------</span><o:p></o:p></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------070600090000010302050908--

Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 916E2E00D8B; Thu,  3 Oct 2019 09:54:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [46.105.39.61 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 2.mo178.mail-out.ovh.net (2.mo178.mail-out.ovh.net
	[46.105.39.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE3DEE00BE2
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2019 09:54:02 -0700 (PDT)
Received: from player696.ha.ovh.net (unknown [10.108.35.119])
	by mo178.mail-out.ovh.net (Postfix) with ESMTP id 0091F7AFDA
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2019 18:38:06 +0200 (CEST)
Received: from 3mdeb.com (89-66-81-201.dynamic.chello.pl [89.66.81.201])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player696.ha.ovh.net (Postfix) with ESMTPSA id 6FEDCA9B8879
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2019 16:38:06 +0000 (UTC)
To: yocto@yoctoproject.org
References: <00ce01d57a08$590d5270$0b27f750$@san.rr.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <b2f7b1c6-793f-1975-3f7c-30facf8306ba@3mdeb.com>
Date: Thu, 3 Oct 2019 18:38:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <00ce01d57a08$590d5270$0b27f750$@san.rr.com>
X-Ovh-Tracer-Id: 2589006839635062441
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrgeekgddutdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Subject: Re: newcomers
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
X-List-Received-Date: Thu, 03 Oct 2019 16:54:04 -0000
Content-Type: multipart/alternative;
	boundary="------------8BD6AD8BDD936454761A01E6"
Content-Language: en-US

--------------8BD6AD8BDD936454761A01E6
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 03.10.2019 18:33, Steve Scott wrote:
>
> How would a newcomer get started?
>
> Is there an FAQ or Wiki that gives a developer overview of the 
> project, patch submission process, etc.?
>
This one is pretty accurate when it comes to patch submission process:
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
>
> It’s hard to jump on to the moving train…
>
> *From:*yocto-bounces@yoctoproject.org 
> [mailto:yocto-bounces@yoctoproject.org] *On Behalf Of *Stephen K Jolley
> *Sent:* Monday, September 30, 2019 8:50 AM
> *To:* openembedded-core@lists.openembedded.org; yocto@yoctoproject.org
> *Subject:* [yocto] (no subject)
>
> All,
>
> The triage team is starting to try and collect up and classify bugs 
> which a newcomer to the project would be able to work on in a way 
> which means people can find them. They're being listed on the triage 
> page under the appropriate heading:
>
> https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs
>
> The idea is these bugs should be straight forward for a person to help 
> work on who doesn't have deep experience with the project.  If anyone 
> can help, please take ownership of the bug and send patches!  If 
> anyone needs help/advice there are people on irc who can likely do so, 
> or some of the more experienced contributors will likely be happy to 
> help too.
>
> Also, the triage team meets weekly and does its best to handle the 
> bugs reported into the Bugzilla. The number of people attending that 
> meeting has fallen, as have the number of people available to help fix 
> bugs. One of the things we hear users report is they don't know how to 
> help. We (the triage team) are therefore going to start reporting out 
> the currently 309 unassigned or newcomer bugs.
>
> We're hoping people may be able to spare some time now and again to 
> help out with these.  Bugs are split into two types, "true bugs" where 
> things don't work as they should and "enhancements" which are features 
> we'd want to add to the system.  There are also roughly four different 
> "priority" classes right now, “2.8”, “2.9’, "2.99" and "Future", the 
> more pressing/urgent issues being in "2.8" and then “2.9”.
>
> Please review this link and if a bug is something you would be able to 
> help with either take ownership of the bug, or send me 
> (sjolley.yp.pm@gmail.com <mailto:sjolley.yp.pm@gmail.com>) an e-mail 
> with the bug number you would like and I will assign it to you (please 
> make sure you have a Bugzilla account).  The list is at: 
> https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_or_Newcomer_Bugs
>
> -- 
>
> Thanks,
>
> */Stephen K. Jolley/*
>
> *Yocto Project Program Manager*
>
> *7867 SW Bayberry Dr., Beaverton, OR 97007*
>
> (*Cell*: (208) 244-4460
>
> * *Email*:_s <mailto:stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com 
> <mailto:jolley.yp.pm@gmail.com>_
>
>
-- 
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


--------------8BD6AD8BDD936454761A01E6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 03.10.2019 18:33, Steve Scott wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:00ce01d57a08$590d5270$0b27f750$@san.rr.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
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
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">How
            would a newcomer get started?<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Is
            there an FAQ or Wiki that gives a developer overview of the
            project, patch submission process, etc.?</span></p>
      </div>
    </blockquote>
    This one is pretty accurate when it comes to patch submission
    process:<br>
<a class="moz-txt-link-freetext" href="https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded">https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded</a><br>
    <blockquote type="cite"
      cite="mid:00ce01d57a08$590d5270$0b27f750$@san.rr.com">
      <div class="WordSection1">
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">It’s
            hard to jump on to the moving train…<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <div style="border:none;border-left:solid blue 1.5pt;padding:0in
          0in 0in 4.0pt">
          <div>
            <div style="border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0in 0in 0in">
              <p class="MsoNormal"><b><span
                    style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">
                  <a class="moz-txt-link-abbreviated" href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>
                  [<a class="moz-txt-link-freetext" href="mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yoctoproject.org</a>] <b>On Behalf
                    Of </b>Stephen K Jolley<br>
                  <b>Sent:</b> Monday, September 30, 2019 8:50 AM<br>
                  <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:openembedded-core@lists.openembedded.org">openembedded-core@lists.openembedded.org</a>;
                  <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                  <b>Subject:</b> [yocto] (no subject)<o:p></o:p></span></p>
            </div>
          </div>
          <p class="MsoNormal"><o:p> </o:p></p>
          <div>
            <p class="MsoNormal"><span
                style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">All,<o:p></o:p></span></p>
            <p class="MsoNormal"><span
                style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> <o:p></o:p></span></p>
            <p class="MsoNormal"><span
                style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">The
                triage team is starting to try and collect up and
                classify bugs which a newcomer to the project would be
                able to work on in a way which means people can find
                them. They're being listed on the triage page under the
                appropriate heading:<o:p></o:p></span></p>
            <p class="MsoNormal"><span
                style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> <o:p></o:p></span></p>
            <p class="MsoNormal"><span
                style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"><a
href="https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs"
                  moz-do-not-send="true"><span style="color:#0563C1">https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs</span></a><o:p></o:p></span></p>
            <p class="MsoNormal"><span
                style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> <o:p></o:p></span></p>
            <p class="MsoNormal"><span
                style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">The
                idea is these bugs should be straight forward for a
                person to help work on who doesn't have deep experience
                with the project.  If anyone can help, please take
                ownership of the bug and send patches!  If anyone needs
                help/advice there are people on irc who can likely do
                so, or some of the more experienced contributors will
                likely be happy to help too.<o:p></o:p></span></p>
            <p class="MsoNormal"><span
                style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> <o:p></o:p></span></p>
            <p class="MsoNormal"><span
                style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">Also,
                the triage team meets weekly and does its best to handle
                the bugs reported into the Bugzilla. The number of
                people attending that meeting has fallen, as have the
                number of people available to help fix bugs. One of the
                things we hear users report is they don't know how to
                help. We (the triage team) are therefore going to start
                reporting out the currently 309 unassigned or newcomer
                bugs.<o:p></o:p></span></p>
            <p class="MsoNormal"><span
                style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> <o:p></o:p></span></p>
            <p class="MsoNormal"><span
                style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">We're
                hoping people may be able to spare some time now and
                again to help out with these.  Bugs are split into two
                types, "true bugs" where things don't work as they
                should and "enhancements" which are features we'd want
                to add to the system.  There are also roughly four
                different "priority" classes right now, “2.8”, “2.9’,
                "2.99" and "Future", the more pressing/urgent issues
                being in "2.8" and then “2.9”.<o:p></o:p></span></p>
            <p class="MsoNormal"><span
                style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> <o:p></o:p></span></p>
            <p class="MsoNormal"><span
                style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">Please
                review this link and if a bug is something you would be
                able to help with either take ownership of the bug, or
                send me (<a href="mailto:sjolley.yp.pm@gmail.com"
                  moz-do-not-send="true"><span style="color:#0563C1">sjolley.yp.pm@gmail.com</span></a>)
                an e-mail with the bug number you would like and I will
                assign it to you (please make sure you have a Bugzilla
                account).  The list is at: <a
href="https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_or_Newcomer_Bugs"
                  moz-do-not-send="true"><span style="color:#0563C1">https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_or_Newcomer_Bugs</span></a><o:p></o:p></span></p>
            <div>
              <p class="MsoNormal"><o:p> </o:p></p>
            </div>
            <p class="MsoNormal">-- <o:p></o:p></p>
            <div>
              <div>
                <div>
                  <div>
                    <p class="MsoNormal"
                      style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
                        style="font-family:&quot;Arial&quot;,sans-serif">Thanks,</span><o:p></o:p></p>
                    <p class="MsoNormal"
style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;background-image:initial;background-position:initial;background-repeat:initial"><span
                        style="font-family:&quot;Arial&quot;,sans-serif"> </span><o:p></o:p></p>
                    <p class="MsoNormal"
style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;background-image:initial;background-position:initial;background-repeat:initial"><b><i><span
                            style="font-size:16.0pt;color:purple">Stephen
                            K. Jolley</span></i></b><o:p></o:p></p>
                    <p class="MsoNormal"
style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;background-image:initial;background-position:initial;background-repeat:initial"><b><span
style="font-size:8.0pt;font-family:&quot;Courier New&quot;;color:blue">Yocto
                          Project Program Manager</span></b><o:p></o:p></p>
                    <p class="MsoNormal"
style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;background-image:initial;background-position:initial;background-repeat:initial"><b><span
                          style="font-family:&quot;Courier
                          New&quot;;color:fuchsia">7867 SW Bayberry Dr.,
                          Beaverton, OR 97007</span></b><o:p></o:p></p>
                    <p class="MsoNormal"
style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;background-image:initial;background-position:initial;background-repeat:initial"><span
style="font-size:9.0pt;font-family:Wingdings;color:black">(</span><span
                        style="font-size:9.0pt;color:teal">    </span><b><span
                          style="font-size:8.0pt;font-family:&quot;Comic
                          Sans MS&quot;;color:teal">Cell</span></b><span
                        style="font-size:9.0pt;color:teal">:               
                      </span><span style="font-size:9.0pt">(208)
                        244-4460</span><o:p></o:p></p>
                    <p class="MsoNormal"
style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;background-image:initial;background-position:initial;background-repeat:initial"><span
                        style="font-size:9.0pt;font-family:Wingdings">* </span><b><span
                          style="font-size:8.0pt;font-family:&quot;Comic
                          Sans MS&quot;;color:teal" lang="FR">Email</span></b><span
                        style="font-size:9.0pt;color:teal" lang="FR">:</span><span
                        style="font-size:9.0pt" lang="FR">                 <u><span
                            style="color:#1155CC"><a
                              href="mailto:stephen.k.jolley@intel.com"
                              target="_blank" moz-do-not-send="true">s</a><a
                              href="mailto:jolley.yp.pm@gmail.com"
                              target="_blank" moz-do-not-send="true">jolley.yp.pm@gmail.com</a></span></u></span><o:p></o:p></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
<a class="moz-txt-link-freetext" href="https://3mdeb.com">https://3mdeb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------8BD6AD8BDD936454761A01E6--

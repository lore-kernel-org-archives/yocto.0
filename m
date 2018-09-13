Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2513E0093B; Thu, 13 Sep 2018 09:13:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00, HTML_FONT_FACE_BAD, 
	HTML_MESSAGE,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 HTML_FONT_FACE_BAD BODY: HTML font face is not a word
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A79FE005B1
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 09:13:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w8DGDeel012663
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 13 Sep 2018 09:13:41 -0700 (PDT)
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Thu, 13 Sep 2018 09:13:40 -0700
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>, "Burton, Ross"
	<ross.burton@intel.com>,
	Armin Kuster <akuster808@gmail.com>, <amanda.r.brindle@intel.com>,
	Yocto discussion list <yocto@yoctoproject.org>,
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>, "MacLeod, Randy"
	<Randy.MacLeod@windriver.com>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155ECEE3705A@fmsmsx123.amr.corp.intel.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <6daf44be-7450-f24c-7fb1-9913a0bdc86f@windriver.com>
Date: Thu, 13 Sep 2018 12:13:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155ECEE3705A@fmsmsx123.amr.corp.intel.com>
X-Originating-IP: [172.25.44.4]
Subject: Re: Notes: Yocto Project Weekly Triage Meeting
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
X-List-Received-Date: Thu, 13 Sep 2018 16:13:44 -0000
Content-Type: multipart/alternative;
	boundary="------------863AA5E842E6E6FBA6BB4182"
Content-Language: en-GB

--------------863AA5E842E6E6FBA6BB4182
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit


On 09/13/2018 11:17 AM, Jolley, Stephen K wrote:
> Attendees: Stephen, Armin, Joshua, Amanda, Richard, Ross, Randy, Anuj,
> Wiki: _https://wiki.yoctoproject.org/wiki/Bug_Triage_
> AR: Ross - Update _12921_ 
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=12921> to NEEDINFO 
> and add comment.
> AR: Armin – Create selftest bug for _12921_ 
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=12921>.
> Discussed that we should expect M3 sometime next week.
> AR: Amanda – Check _12332_ 
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=12332> to see if it 
> can be closed.
> AR: Randy – Check _12774_ 
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=12774> to see if it 
> can be closed.
> AR: Stephen – Check with David if _12785_ 
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=12785> and _12891_ 
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=12891> will be 
> closed in M3.
> Thanks,
> */Stephen K. Jolley/*
> *Yocto Project Program Manager*
> *INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124 *
> (*Cell*: (208) 244-4460
> * *Email*: _stephen.k.jolley@intel.com_


This missed my email filters since I wasn't on the TO/CC list.
I added people with an AR to the To: list since they may be
in the same flooding even with filters email boat.



Stephen,
Can you please explicitly address anyone who has an AR next time?


Thanks,
-- 
# Randy MacLeod
# Wind River Linux


--------------863AA5E842E6E6FBA6BB4182
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix"><br>
      On 09/13/2018 11:17 AM, Jolley, Stephen K wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:9ADD3FDE8B189B4AA2F8A3C711F8155ECEE3705A@fmsmsx123.amr.corp.intel.com">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <meta name="Generator" content="Microsoft Exchange Server">
      <!-- converted from rtf -->
      <style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left: #800000 2px solid; } --></style>
      <font face="Times New Roman" size="3"><span
          style="font-size:12pt;"><a name="_MailEndCompose"
            moz-do-not-send="true"></a>
          <div><font color="#1F497D" face="Calibri" size="2"><span
                style="font-size:11pt;">Attendees: Stephen, Armin,
                Joshua, Amanda, Richard, Ross, Randy, Anuj, </span></font></div>
          <div><font color="#1F497D" face="Calibri" size="2"><span
                style="font-size:11pt;"> </span></font></div>
          <div><font color="#1F497D" face="Calibri" size="2"><span
                style="font-size:11pt;">Wiki: <a
                  href="https://wiki.yoctoproject.org/wiki/Bug_Triage"
                  moz-do-not-send="true"><font color="#0563C1"><u>https://wiki.yoctoproject.org/wiki/Bug_Triage</u></font></a></span></font></div>
          <div><font color="#1F497D" face="Calibri" size="2"><span
                style="font-size:11pt;"> </span></font></div>
          <div><font color="#1F497D" face="Calibri" size="2"><span
                style="font-size:11pt;">AR: Ross - Update <a
                  href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=12921"
                  moz-do-not-send="true"><font color="#0563C1"><u>12921</u></font></a>
                to NEEDINFO and add comment.</span></font></div>
          <div><font color="#1F497D" face="Calibri" size="2"><span
                style="font-size:11pt;">AR: Armin – Create selftest bug
                for <a
                  href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=12921"
                  moz-do-not-send="true"><font color="#0563C1"><u>12921</u></font></a>.
              </span></font></div>
          <div><font color="#1F497D" face="Calibri" size="2"><span
                style="font-size:11pt;">Discussed that we should expect
                M3 sometime next week. </span></font></div>
          <div><font color="#1F497D" face="Calibri" size="2"><span
                style="font-size:11pt;">AR: Amanda – Check <a
                  href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=12332"
                  moz-do-not-send="true"><font color="#0563C1"><u>12332</u></font></a>
                to see if it can be closed.</span></font></div>
          <div><font color="#1F497D" face="Calibri" size="2"><span
                style="font-size:11pt;">AR: Randy – Check <a
                  href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=12774"
                  moz-do-not-send="true"><font color="#0563C1"><u>12774</u></font></a>
                to see if it can be closed.</span></font></div>
          <div><font color="#1F497D" face="Calibri" size="2"><span
                style="font-size:11pt;">AR: Stephen – Check with David
                if <a
                  href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=12785"
                  moz-do-not-send="true"><font color="#0563C1"><u>12785</u></font></a>
                and <a
                  href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=12891"
                  moz-do-not-send="true"><font color="#0563C1"><u>12891</u></font></a>
                will be closed in M3.</span></font></div>
          <div><font color="#1F497D" face="Calibri" size="2"><span
                style="font-size:11pt;"> </span></font></div>
          <div><font color="#1F497D" face="Calibri" size="2"><span
                style="font-size:11pt;">Thanks,</span></font></div>
          <div><font color="#1F497D" face="Calibri" size="2"><span
                style="font-size:11pt;"> </span></font></div>
          <div><font color="purple" size="4"><span
                style="font-size:16pt;"><b><i>Stephen K. Jolley</i></b></span></font></div>
          <div><font color="blue" face="Courier New" size="1"><span
                style="font-size:8pt;"><b>Yocto Project Program Manager</b></span></font></div>
          <div><font color="fuchsia" face="Courier New" size="2"><span
                style="font-size:10pt;"><b>INTEL, MS JF1-255, 2111 N.E.
                  25th Avenue, Hillsboro, OR 97124 </b></span></font></div>
          <div><font size="2"><span style="font-size:9pt;"><font
                  face="Wingdings">(</font><font color="teal" face="MS
                  Sans Serif">    </font><font color="teal" face="Comic
                  Sans MS" size="1"><span style="font-size:8pt;"><b>Cell</b></span></font><font
                  color="teal" face="MS Sans Serif">:             
                </font><font color="#1F497D" face="MS Sans Serif">(208)
                  244-4460</font></span></font></div>
          <div><font color="#1F497D" size="2"><span
                style="font-size:9pt;"><font face="Wingdings">* </font><font
                  color="teal" face="Comic Sans MS" size="1"><span
                    style="font-size:8pt;"><b>Email</b></span></font><font
                  color="teal" face="MS Sans Serif">:               
                </font><font color="blue" face="MS Sans Serif"><u><a class="moz-txt-link-abbreviated" href="mailto:stephen.k.jolley@intel.com">stephen.k.jolley@intel.com</a></u></font></span></font></div>
          <div><font face="Calibri" size="2"><span
                style="font-size:11pt;"> </span></font></div>
        </span></font>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">This missed my email filters since I wasn't on the TO/CC list.
I added people with an AR to the To: list since they may be
in the same flooding even with filters email boat.



Stephen, 
Can you please explicitly address anyone who has an AR next time?


Thanks,
-- 
# Randy MacLeod
# Wind River Linux
</pre>
  </body>
</html>

--------------863AA5E842E6E6FBA6BB4182--

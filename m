Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58655E0086E; Tue, 27 Jan 2015 07:09:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB21EE007BA
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 07:08:51 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t0RF8nZO009663
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 27 Jan 2015 07:08:49 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Tue, 27 Jan 2015 07:08:48 -0800
Message-ID: <54C7A9EA.7000306@windriver.com>
Date: Tue, 27 Jan 2015 10:08:26 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Yani Dubin <yani.dubin@taitradio.com>, <yocto@yoctoproject.org>
References: <CAHSWo-jFj5Wk1xBvaaY7UegFjQ2XJn_PK0YFcy+pNeLW2ThMpQ@mail.gmail.com>
In-Reply-To: <CAHSWo-jFj5Wk1xBvaaY7UegFjQ2XJn_PK0YFcy+pNeLW2ThMpQ@mail.gmail.com>
Subject: Re: (IIO) ADC freeze on am335x processor on 3.14.26ltsi kernel
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
X-List-Received-Date: Tue, 27 Jan 2015 15:09:03 -0000
Content-Type: multipart/alternative;
	boundary="------------000608080804040806060609"

--------------000608080804040806060609
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-01-26 11:54 PM, Yani Dubin wrote:
> Hi,
>
> I have run up against a kernel bug on the dizzy branch where a read of 
> an ADC channel (IIO bus) on a Sitara (am335x) processor locks up the 
> process reading the /sys/bus/iio/devices/iio\:device0/in_voltage?_raw 
> node. The system remains stable, but the locked process does not 
> respond to SIGKILL. No kernel errors or debugging info in the logs - 
> but I have taken no steps to improve verbosity. fuser shows the files 
> as being open by the crashed process.
>
> I did google the issue, but turned up nothing. This is very 
> reproduceable, and I have done my best to narrow it down on the dizzy 
> timeline. In each case I have used the same rootfs (built from dizzy 
> tip), but just flashed a different kernel.
>
> The (yocto) changesets in question are:
> 36e42c0ddb7a40b3022e9b165560622479f1aa5c  - 3.14.26ltsi exhibits issue
> 446acfb5a474b23041b46c49732474f2d415160d   - 3.14.24 doesn't build
> d7c61053da96d675c3912a45ee448c20ae91721b - 3.14.19 issue not present
>
> The build error in question is "ERROR: Fetcher failure: Unable to find 
> revision fba2d0cdb745e0f807ce134fd9d1524b7bed9742 in branch meta even 
> from upstream".
>
> These are 3 adjacent changesets on the dizzy branch - I gather that is 
> as much as I can narrow it down?
>
> Should I be submitting this bug to yocto bugzilla (since it affects 
> the stable release, and I am using linux-yocto) or a linux kernel bug 
> tracker / mailing list? Or is there further information I should be 
> getting (enabling kernel debugging / increasing verbosity perhaps)? 
> Should I do a build off the unstable branch for comparison? (to see if 
> this has a newer kernel, with upstream fix which resolves the issue)

We may need to get your help in tracking the problem down, since without
the h/w on hand, it will be difficult to figure out what changed between the
working and non-working revisions.

I have some additional 3.14 updates queued, and they may fix the issue ..
but again, I can't say for sure.

Are you able to bisect the kernel directly ? I only submit SRCREV updates to
the linux-yocto recipes at particular milestones, but within the kernel we
obviously have more granularity.

After you've built the kernel the first time, you can head into devshell 
and
then use the unpacked and patched src tree and do a normal git bisect/build
workflow. You'd need to copy the resulting kernels out to your target, 
but that
would narrow down the bad commit/merge pretty quickly.

Bruce

>
> Meanwhile, I thought I would see if anyone else is experiencing this, 
> or has similar hardware and can see if they are also affected. This is 
> a custom board, but similar processor-wise to the Beaglebone Black.
>
> Steps to reproduce:
> cat /sys/bus/iio/devices/iio\:device0/in_voltage?_raw
>
> The particular drivers in use are:
> CONFIG_TI_AM335X_ADC=y
> CONFIG_MFD_TI_AM335X_TSCADC=y
>
> Regards,
> Yani.
>
> ------------------------------------------------------------------------
> This email, including any attachments, is only for the intended 
> recipient. It is subject to copyright, is confidential and may be the 
> subject of legal or other privilege, none of which is waived or lost 
> by reason of this transmission.
> If you are not an intended recipient, you may not use, disseminate, 
> distribute or reproduce such email, any attachments, or any part 
> thereof. If you have received a message in error, please notify the 
> sender immediately and erase all copies of the message and any 
> attachments.
> Unfortunately, we cannot warrant that the email has not been altered 
> or corrupted during transmission nor can we guarantee that any email 
> or any attachments are free from computer viruses or other conditions 
> which may damage or interfere with recipient data, hardware or 
> software. The recipient relies upon its own procedures and assumes all 
> risk of use and of opening any attachments.
> ------------------------------------------------------------------------
>
>


--------------000608080804040806060609
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 15-01-26 11:54 PM, Yani Dubin wrote:<br>
    </div>
    <blockquote
cite="mid:CAHSWo-jFj5Wk1xBvaaY7UegFjQ2XJn_PK0YFcy+pNeLW2ThMpQ@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>Hi,<br>
          <br>
          I have run up against a kernel bug on the dizzy branch where a
          read of an ADC channel (IIO bus) on a Sitara (am335x)
          processor locks up the process reading the
          /sys/bus/iio/devices/iio\:device0/in_voltage?_raw node. The
          system remains stable, but the locked process does not respond
          to SIGKILL. No kernel errors or debugging info in the logs -
          but I have taken no steps to improve verbosity. fuser shows
          the files as being open by the crashed process.<br>
          <br>
          I did google the issue, but turned up nothing. This is very
          reproduceable, and I have done my best to narrow it down on
          the dizzy timeline. In each case I have used the same rootfs
          (built from dizzy tip), but just flashed a different kernel.<br>
          <br>
          The (yocto) changesets in question are:<br>
          36e42c0ddb7a40b3022e9b165560622479f1aa5c  - 3.14.26ltsi
          exhibits issue<br>
          446acfb5a474b23041b46c49732474f2d415160d   - 3.14.24 doesn't
          build<br>
          d7c61053da96d675c3912a45ee448c20ae91721b - 3.14.19 issue not
          present<br>
          <br>
          The build error in question is "ERROR: Fetcher failure: Unable
          to find revision fba2d0cdb745e0f807ce134fd9d1524b7bed9742 in
          branch meta even from upstream".<br>
          <br>
          These are 3 adjacent changesets on the dizzy branch - I gather
          that is as much as I can narrow it down?<br>
          <br>
          Should I be submitting this bug to yocto bugzilla (since it
          affects the stable release, and I am using linux-yocto) or a
          linux kernel bug tracker / mailing list? Or is there further
          information I should be getting (enabling kernel debugging /
          increasing verbosity perhaps)? Should I do a build off the
          unstable branch for comparison? (to see if this has a newer
          kernel, with upstream fix which resolves the issue)<br>
        </div>
      </div>
    </blockquote>
    <br>
    We may need to get your help in tracking the problem down, since
    without<br>
    the h/w on hand, it will be difficult to figure out what changed
    between the<br>
    working and non-working revisions.<br>
    <br>
    I have some additional 3.14 updates queued, and they may fix the
    issue .. <br>
    but again, I can't say for sure.<br>
    <br>
    Are you able to bisect the kernel directly ? I only submit SRCREV
    updates to<br>
    the linux-yocto recipes at particular milestones, but within the
    kernel we <br>
    obviously have more granularity.<br>
    <br>
    After you've built the kernel the first time, you can head into
    devshell and <br>
    then use the unpacked and patched src tree and do a normal git
    bisect/build<br>
    workflow. You'd need to copy the resulting kernels out to your
    target, but that<br>
    would narrow down the bad commit/merge pretty quickly.<br>
    <br>
    Bruce<br>
    <br>
    <blockquote
cite="mid:CAHSWo-jFj5Wk1xBvaaY7UegFjQ2XJn_PK0YFcy+pNeLW2ThMpQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
          Meanwhile, I thought I would see if anyone else is
          experiencing this, or has similar hardware and can see if they
          are also affected. This is a custom board, but similar
          processor-wise to the Beaglebone Black.<br clear="all">
        </div>
        <div>
          <div>
            <div><br>
            </div>
            <div>Steps to reproduce:<br>
              cat /sys/bus/iio/devices/iio\:device0/in_voltage?_raw<br>
              <br>
            </div>
            <div>The particular drivers in use are:<br>
              CONFIG_TI_AM335X_ADC=y<br>
              CONFIG_MFD_TI_AM335X_TSCADC=y<br>
              <br>
            </div>
            <div>Regards,<br>
              Yani.</div>
          </div>
        </div>
      </div>
      <br>
      <hr><font color="#808080">This email, including any attachments,
        is only for the intended recipient. It is subject to copyright,
        is confidential and may be the subject of legal or other
        privilege, none of which is waived or lost by reason of this
        transmission.</font>
      <div><font color="#808080">If you are not an intended recipient,
          you may not use, disseminate, distribute or reproduce such
          email, any attachments, or any part thereof. If you have
          received a message in error, please notify the sender
          immediately and erase all copies of the message and any
          attachments.</font></div>
      <div><font color="#808080">Unfortunately, we cannot warrant that
          the email has not been altered or corrupted during
          transmission nor can we guarantee that any email or any
          attachments are free from computer viruses or other conditions
          which may damage or interfere with recipient data, hardware or
          software. The recipient relies upon its own procedures and
          assumes all risk of use and of opening any attachments.</font></div>
      <div>
        <hr></div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------000608080804040806060609--

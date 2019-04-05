Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33437E00D20; Thu,  4 Apr 2019 20:39:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1250E009A4
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 20:39:48 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id e6so2309602pgc.4
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 20:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=Dhq6R5vecLOc5HrRmZc2jher7Ydr3VTIdJXGMP0gubk=;
	b=ND48k0r725zBiKIlgJIP0vZYk1q45cq+Y8Q3MdkEeMVe+n+SouiFEOxmo4DmRs1oYG
	IiozLRMeE80ZyIUMrutnCffJlRbWaN3mRa9B7eISsoQbFPC7WYxPXZiZ48XlSKsKUAEN
	q/IA+Z7bBSzaUnGkiOYYyNyFNicgtfSpcwdxyXUheCbu6VYdryyjpLZJU+r3aeCO8K3S
	LZ84p3jHkCmfXj1QJoaAcjlk9RyoS1bmEJ2tR+8zSiWUpTCBmPswLOpIbcDc/jBkeNOn
	D+TZG4aWd8Nh0dYoolvUwhNvw4RGyogDruxEnBv+ZevsPDNM3462T1J4uff3DM5lZsf/
	5HWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=Dhq6R5vecLOc5HrRmZc2jher7Ydr3VTIdJXGMP0gubk=;
	b=MxFudcj1h/w6EJgCsXkslyv+Op9piVYjUiGIDtFLxfRwri6tc0Po+XiYrcHSOoVk/X
	AgiphtTeywbvHpc1W/Wac2dfwoOqeQnTYDIyjwm+CPxcrKU08eOzvTHai74YXXS+q2V6
	FdJ2mYbcDpU7ykZjRoVdG1+qKLGBw/XwxrfXF7ebBeai+tudVuKUxaazmImkEfQb3O9k
	t8SnJIFD664Hmp9qOEfEce5L65lnlA6bW3FVGg6MMtVj+bTtbQ5zUX3soE0IEEo3wN/H
	5TLfkonFwj1riyKKwIE5ZmiGuIlQNQozzvYvG9Ur/KK8z5otpG4roXzepHwBpxbYYZVG
	dkzA==
X-Gm-Message-State: APjAAAWP+lI8RBDV9jL9fPbJ+AxMr+S/IdK3EUPHpM1VxB4krnFtMPCF
	RJ5ubWnCscBHpQHDS+OPxGgM9YegYC1ZOw==
X-Google-Smtp-Source: APXvYqyopYo9XEYYuulHPeoAwvf30JE1CLDQ4rEKNoOGvyGdxX5t9k0zFRluvdnBvBH0poHOifqiAg==
X-Received: by 2002:aa7:9294:: with SMTP id j20mr9991772pfa.64.1554435587868; 
	Thu, 04 Apr 2019 20:39:47 -0700 (PDT)
Received: from [10.240.241.171] ([116.212.180.67])
	by smtp.gmail.com with ESMTPSA id
	m23sm30840510pfa.117.2019.04.04.20.39.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 04 Apr 2019 20:39:46 -0700 (PDT)
To: Tim Orling <ticotimo@gmail.com>, richard.purdie@linuxfoundation.org
References: <20190328033000.C90DF1C2149@ubuntu1604-ty-1.yocto.io>
	<015AB11D45F2C442929CB2765DAE738634DB02DA@PGSMSX110.gar.corp.intel.com>
	<8322586b16a5bda01770480f7096837c13d26f6b.camel@linuxfoundation.org>
	<015AB11D45F2C442929CB2765DAE738634DC0126@PGSMSX110.gar.corp.intel.com>
	<dd9d4804a3b42d84b0dcac0d35e3d1a1a4f0146a.camel@linuxfoundation.org>
	<5f279a38-ec01-21b5-e683-a9bc3caa8235@gmail.com>
	<913d9791bc9c41137478e4d76ee6131f385ab4cc.camel@linuxfoundation.org>
	<CANx9H-CcTgJg5_H10E0w_waoF-6PKdqJQ2x2ET+apqeA5yQouw@mail.gmail.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <875dd72a-7e62-1e74-76da-49de472a110d@mvista.com>
Date: Fri, 5 Apr 2019 09:09:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CANx9H-CcTgJg5_H10E0w_waoF-6PKdqJQ2x2ET+apqeA5yQouw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	akuster808 <akuster808@gmail.com>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	Poky Build User <pokybuild@ubuntu1604-ty-1.yocto.io>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.2.rc3)
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
X-List-Received-Date: Fri, 05 Apr 2019 03:39:54 -0000
Content-Type: multipart/alternative;
	boundary="------------14892580606489DA96C44772"
Content-Language: en-US

--------------14892580606489DA96C44772
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 4/5/19 6:28 AM, Tim Orling wrote:
> Just curious: all Perl modules in oe-core have ptest enabled, but only
> libxml-parser-perl is included in these test reports. Is it simply the
> only module in that image or is something else afoot?

Is this what you are looking for ?

<snipped>
pango              | 12          | 0        | 0        | -
perl               | 2282        | 3        | 120      | -
python             | 8331        | 45       | 69       | -

>
> On Thu, Apr 4, 2019 at 3:29 PM <richard.purdie@linuxfoundation.org
> <mailto:richard.purdie@linuxfoundation.org>> wrote:
>
>     On Fri, 2019-04-05 at 03:46 +0530, akuster808 wrote:
>     >
>     > On 4/5/19 3:25 AM, richard.purdie@linuxfoundation.org
>     <mailto:richard.purdie@linuxfoundation.org> wrote:
>     > > On Thu, 2019-04-04 at 02:19 +0000, Jain, Sangeeta wrote:
>     > > > Also, I don't see any ptest results for 2.6.2.rc3 on public
>     > > > autobuilder. Do you have any plans to run them and share the
>     > > > results
>     > > > on autobuilder?
>     > > These were run separately but will run as part of any new stable
>     > > release builds. The results are here:
>     > >
>     > >
>     https://autobuilder.yocto.io/pub/non-release/20190328-8/testresults/qemux86-64-ptest/
>     > >
>     https://autobuilder.yocto.io/pub/non-release/20190328-7/testresults/qemux86-64-ptest/
>     > >
>     > > (for 2.6.2 and 2.5.4)
>     > >
>     > > I'll merge these into the main release output in due course.
>     > Did I miss something in order to create:
>     >
>     https://autobuilder.yocto.io/pub/non-release/20190326-8/testresults/testresult-report.txt
>
>     Right now only a-quick or a-full builds get those.
>
>     You can get one with:
>
>     $ wget
>     https://autobuilder.yocto.io/pub/non-release/20190328-8/testresults/qemux86-64-ptest/testresults.json
>     $ resulttool report .
>
>     which gives:
>
>     ==============================================================================================================
>     PTest Result Summary
>     ==============================================================================================================
>     --------------------------------------------------------------------------------------------------------------
>     Recipe             | Passed      | Failed   | Skipped  | Time(s)   
>     --------------------------------------------------------------------------------------------------------------
>     acl                | 221         | 0        | 0        | -
>     attr               | 109         | 0        | 0        | -
>     bash               | 75          | 4        | 0        | -
>     bluez5             | 25          | 0        | 0        | -
>     busybox            | 528         | 15       | 45       | -
>     bzip2              | 6           | 0        | 0        | -
>     dbus-test          | 18          | 3        | 2        | -
>     diffstat           | 439         | 0        | 0        | -
>     diffutils          | 20          | 0        | 0        | -
>     e2fsprogs          | 315         | 6        | 27       | -
>     flex               | 114         | 0        | 0        | -
>     gawk               | 342         | 0        | 0        | -
>     gdbm               | 24          | 0        | 0        | -
>     gdk-pixbuf         | 20          | 0        | 0        | -
>     glib-2.0           | 259         | 3        | 0        | -
>     gstreamer1.0       | 101         | 3        | 0        | -
>     gzip               | 21          | 0        | 0        | -
>     libpcre            | 3           | 0        | 0        | -
>     libusb1            | 4           | 0        | 0        | -
>     libxml-parser-perl | 15          | 0        | 0        | -
>     libxml2            | 134         | 0        | 0        | -
>     lttng-tools        | 1087        | 0        | 0        | - T
>     lzo                | 39          | 6        | 0        | -
>     nettle             | 158         | 0        | 2        | -
>     openssh            | 832         | 72       | 367      | - T
>     openssl            | 0           | 0        | 0        | -
>     pango              | 12          | 0        | 0        | -
>     perl               | 2298        | 1        | 120      | -
>     python             | 5444        | 15       | 53       | -
>     python3            | 7466        | 0        | 198      | -
>     quilt              | 57          | 0        | 0        | -
>     sed                | 86          | 0        | 0        | -
>     slang              | 97          | 0        | 0        | -
>     strace             | 213         | 272      | 97       | - T
>     tcl                | 148         | 0        | 0        | -
>     util-linux         | 0           | 395      | 55       | -
>     --------------------------------------------------------------------------------------------------------------
>
>     and
>
>     $ wget
>     https://autobuilder.yocto.io/pub/non-release/20190328-7/testresults/qemux86-64-ptest/testresults.json
>     $ resulttool report .
>
>     which gives:
>
>     ==============================================================================================================
>     PTest Result Summary
>     ==============================================================================================================
>     --------------------------------------------------------------------------------------------------------------
>     Recipe             | Passed      | Failed   | Skipped  | Time(s)   
>     --------------------------------------------------------------------------------------------------------------
>     acl                | 221         | 0        | 0        | -
>     attr               | 109         | 0        | 0        | -
>     bash               | 75          | 4        | 0        | -
>     bluez5             | 7           | 0        | 0        | -
>     busybox            | 509         | 14       | 36       | -
>     bzip2              | 6           | 0        | 0        | -
>     dbus-test          | 18          | 3        | 2        | -
>     diffstat           | 439         | 0        | 0        | -
>     diffutils          | 20          | 0        | 0        | -
>     e2fsprogs          | 304         | 5        | 27       | -
>     flex               | 114         | 0        | 0        | -
>     gawk               | 342         | 0        | 0        | -
>     gdbm               | 19          | 0        | 0        | -
>     gdk-pixbuf         | 20          | 0        | 0        | -
>     glib-2             | 252         | 1        | 0        | -
>     gzip               | 21          | 0        | 0        | -
>     libevent           | 1           | 0        | 0        | -
>     libpcre            | 3           | 0        | 0        | -
>     libxml-parser-perl | 15          | 0        | 0        | -
>     libxml2            | 134         | 0        | 0        | -
>     lttng-tools        | 1087        | 0        | 0        | -
>     lzo                | 39          | 6        | 0        | -
>     nettle             | 158         | 0        | 2        | -
>     openssh            | 840         | 72       | 367      | -
>     openssl            | 54          | 0        | 0        | -
>     pango              | 12          | 0        | 0        | -
>     perl               | 2282        | 3        | 120      | -
>     python             | 8331        | 45       | 69       | -
>     quilt              | 57          | 0        | 0        | -
>     sed                | 86          | 0        | 0        | -
>     slang              | 97          | 0        | 0        | -
>     strace             | 160         | 233      | 80       | -
>     tcl                | 148         | 0        | 0        | -
>     util-linux         | 0           | 389      | 52       | -
>     --------------------------------------------------------------------------------------------------------------
>
>     Knowing what I do about master, there is the same image  space issue
>     here triggered in the strace ptest by the looks of it which then
>     breaks
>     other tests like util-linux.
>
>     Cheers,
>
>     Richard
>
>
>
>
>
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>


--------------14892580606489DA96C44772
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 4/5/19 6:28 AM, Tim Orling wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANx9H-CcTgJg5_H10E0w_waoF-6PKdqJQ2x2ET+apqeA5yQouw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div>
        <div dir="auto">Just curious: all Perl modules in oe-core have
          ptest enabled, but only libxml-parser-perl is included in
          these test reports. Is it simply the only module in that image
          or is something else afoot?</div>
      </div>
    </blockquote>
    <br>
    Is this what you are looking for ?<br>
    <br>
    &lt;snipped&gt;<br>
    pango              | 12          | 0        | 0        | -<br>
    perl               | 2282        | 3        | 120      | -<br>
    python             | 8331        | 45       | 69       | -<br>
    <br>
    <blockquote type="cite"
cite="mid:CANx9H-CcTgJg5_H10E0w_waoF-6PKdqJQ2x2ET+apqeA5yQouw@mail.gmail.com">
      <div><br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Thu, Apr 4, 2019 at 3:29
            PM &lt;<a href="mailto:richard.purdie@linuxfoundation.org"
              moz-do-not-send="true">richard.purdie@linuxfoundation.org</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">On Fri,
            2019-04-05 at 03:46 +0530, akuster808 wrote:<br>
            &gt; <br>
            &gt; On 4/5/19 3:25 AM, <a
              href="mailto:richard.purdie@linuxfoundation.org"
              target="_blank" moz-do-not-send="true">richard.purdie@linuxfoundation.org</a>
            wrote:<br>
            &gt; &gt; On Thu, 2019-04-04 at 02:19 +0000, Jain, Sangeeta
            wrote:<br>
            &gt; &gt; &gt; Also, I don't see any ptest results for
            2.6.2.rc3 on public<br>
            &gt; &gt; &gt; autobuilder. Do you have any plans to run
            them and share the<br>
            &gt; &gt; &gt; results<br>
            &gt; &gt; &gt; on autobuilder?<br>
            &gt; &gt; These were run separately but will run as part of
            any new stable<br>
            &gt; &gt; release builds. The results are here:<br>
            &gt; &gt; <br>
            &gt; &gt; <a
href="https://autobuilder.yocto.io/pub/non-release/20190328-8/testresults/qemux86-64-ptest/"
              rel="noreferrer" target="_blank" moz-do-not-send="true">https://autobuilder.yocto.io/pub/non-release/20190328-8/testresults/qemux86-64-ptest/</a><br>
            &gt; &gt; <a
href="https://autobuilder.yocto.io/pub/non-release/20190328-7/testresults/qemux86-64-ptest/"
              rel="noreferrer" target="_blank" moz-do-not-send="true">https://autobuilder.yocto.io/pub/non-release/20190328-7/testresults/qemux86-64-ptest/</a><br>
            &gt; &gt; <br>
            &gt; &gt; (for 2.6.2 and 2.5.4)<br>
            &gt; &gt; <br>
            &gt; &gt; I'll merge these into the main release output in
            due course.<br>
            &gt; Did I miss something in order to create:<br>
            &gt; <a
href="https://autobuilder.yocto.io/pub/non-release/20190326-8/testresults/testresult-report.txt"
              rel="noreferrer" target="_blank" moz-do-not-send="true">https://autobuilder.yocto.io/pub/non-release/20190326-8/testresults/testresult-report.txt</a><br>
            <br>
            Right now only a-quick or a-full builds get those.<br>
            <br>
            You can get one with:<br>
            <br>
            $ wget <a
href="https://autobuilder.yocto.io/pub/non-release/20190328-8/testresults/qemux86-64-ptest/testresults.json"
              rel="noreferrer" target="_blank" moz-do-not-send="true">https://autobuilder.yocto.io/pub/non-release/20190328-8/testresults/qemux86-64-ptest/testresults.json</a><br>
            $ resulttool report .<br>
            <br>
            which gives:<br>
            <br>
==============================================================================================================<br>
            PTest Result Summary<br>
==============================================================================================================<br>
--------------------------------------------------------------------------------------------------------------<br>
            Recipe             | Passed      | Failed   | Skipped  |
            Time(s)   <br>
--------------------------------------------------------------------------------------------------------------<br>
            acl                | 221         | 0        | 0        | -<br>
            attr               | 109         | 0        | 0        | -<br>
            bash               | 75          | 4        | 0        | -<br>
            bluez5             | 25          | 0        | 0        | -<br>
            busybox            | 528         | 15       | 45       | -<br>
            bzip2              | 6           | 0        | 0        | -<br>
            dbus-test          | 18          | 3        | 2        | -<br>
            diffstat           | 439         | 0        | 0        | -<br>
            diffutils          | 20          | 0        | 0        | -<br>
            e2fsprogs          | 315         | 6        | 27       | -<br>
            flex               | 114         | 0        | 0        | -<br>
            gawk               | 342         | 0        | 0        | -<br>
            gdbm               | 24          | 0        | 0        | -<br>
            gdk-pixbuf         | 20          | 0        | 0        | -<br>
            glib-2.0           | 259         | 3        | 0        | -<br>
            gstreamer1.0       | 101         | 3        | 0        | -<br>
            gzip               | 21          | 0        | 0        | -<br>
            libpcre            | 3           | 0        | 0        | -<br>
            libusb1            | 4           | 0        | 0        | -<br>
            libxml-parser-perl | 15          | 0        | 0        | -<br>
            libxml2            | 134         | 0        | 0        | -<br>
            lttng-tools        | 1087        | 0        | 0        | - T<br>
            lzo                | 39          | 6        | 0        | -<br>
            nettle             | 158         | 0        | 2        | -<br>
            openssh            | 832         | 72       | 367      | - T<br>
            openssl            | 0           | 0        | 0        | -<br>
            pango              | 12          | 0        | 0        | -<br>
            perl               | 2298        | 1        | 120      | -<br>
            python             | 5444        | 15       | 53       | -<br>
            python3            | 7466        | 0        | 198      | -<br>
            quilt              | 57          | 0        | 0        | -<br>
            sed                | 86          | 0        | 0        | -<br>
            slang              | 97          | 0        | 0        | -<br>
            strace             | 213         | 272      | 97       | - T<br>
            tcl                | 148         | 0        | 0        | -<br>
            util-linux         | 0           | 395      | 55       | -<br>
--------------------------------------------------------------------------------------------------------------<br>
            <br>
            and<br>
            <br>
            $ wget <a
href="https://autobuilder.yocto.io/pub/non-release/20190328-7/testresults/qemux86-64-ptest/testresults.json"
              rel="noreferrer" target="_blank" moz-do-not-send="true">https://autobuilder.yocto.io/pub/non-release/20190328-7/testresults/qemux86-64-ptest/testresults.json</a><br>
            $ resulttool report .<br>
            <br>
            which gives:<br>
            <br>
==============================================================================================================<br>
            PTest Result Summary<br>
==============================================================================================================<br>
--------------------------------------------------------------------------------------------------------------<br>
            Recipe             | Passed      | Failed   | Skipped  |
            Time(s)   <br>
--------------------------------------------------------------------------------------------------------------<br>
            acl                | 221         | 0        | 0        | -<br>
            attr               | 109         | 0        | 0        | -<br>
            bash               | 75          | 4        | 0        | -<br>
            bluez5             | 7           | 0        | 0        | -<br>
            busybox            | 509         | 14       | 36       | -<br>
            bzip2              | 6           | 0        | 0        | -<br>
            dbus-test          | 18          | 3        | 2        | -<br>
            diffstat           | 439         | 0        | 0        | -<br>
            diffutils          | 20          | 0        | 0        | -<br>
            e2fsprogs          | 304         | 5        | 27       | -<br>
            flex               | 114         | 0        | 0        | -<br>
            gawk               | 342         | 0        | 0        | -<br>
            gdbm               | 19          | 0        | 0        | -<br>
            gdk-pixbuf         | 20          | 0        | 0        | -<br>
            glib-2             | 252         | 1        | 0        | -<br>
            gzip               | 21          | 0        | 0        | -<br>
            libevent           | 1           | 0        | 0        | -<br>
            libpcre            | 3           | 0        | 0        | -<br>
            libxml-parser-perl | 15          | 0        | 0        | -<br>
            libxml2            | 134         | 0        | 0        | -<br>
            lttng-tools        | 1087        | 0        | 0        | -<br>
            lzo                | 39          | 6        | 0        | -<br>
            nettle             | 158         | 0        | 2        | -<br>
            openssh            | 840         | 72       | 367      | -<br>
            openssl            | 54          | 0        | 0        | -<br>
            pango              | 12          | 0        | 0        | -<br>
            perl               | 2282        | 3        | 120      | -<br>
            python             | 8331        | 45       | 69       | -<br>
            quilt              | 57          | 0        | 0        | -<br>
            sed                | 86          | 0        | 0        | -<br>
            slang              | 97          | 0        | 0        | -<br>
            strace             | 160         | 233      | 80       | -<br>
            tcl                | 148         | 0        | 0        | -<br>
            util-linux         | 0           | 389      | 52       | -<br>
--------------------------------------------------------------------------------------------------------------<br>
            <br>
            Knowing what I do about master, there is the same image 
            space issue<br>
            here triggered in the strace ptest by the looks of it which
            then breaks<br>
            other tests like util-linux.<br>
            <br>
            Cheers,<br>
            <br>
            Richard<br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            -- <br>
            _______________________________________________<br>
            yocto mailing list<br>
            <a href="mailto:yocto@yoctoproject.org" target="_blank"
              moz-do-not-send="true">yocto@yoctoproject.org</a><br>
            <a href="https://lists.yoctoproject.org/listinfo/yocto"
              rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <br>
  </body>
</html>

--------------14892580606489DA96C44772--

Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 714ACE00C7D; Thu, 27 Jun 2019 00:17:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6932E00C37
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2019 00:17:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x5R7Hv6g026491
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2019 00:17:57 -0700 (PDT)
Received: from [128.224.162.148] (128.224.162.148) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Thu, 27 Jun 2019 00:17:56 -0700
To: <yocto@yoctoproject.org>
References: <CAEmXcAxcyTEv0tqmGrT9RyFch2ZxZWpAti5ssnh0+P0zTR9tqQ@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <c13e6f65-72e7-aeda-c731-79b44b219a5a@windriver.com>
Date: Thu, 27 Jun 2019 15:30:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAEmXcAxcyTEv0tqmGrT9RyFch2ZxZWpAti5ssnh0+P0zTR9tqQ@mail.gmail.com>
X-Originating-IP: [128.224.162.148]
Subject: Re: bitbak command: No recipe available for
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
X-List-Received-Date: Thu, 27 Jun 2019 07:17:58 -0000
Content-Type: multipart/alternative;
	boundary="------------2C1659CC97801B46581D2B90"

--------------2C1659CC97801B46581D2B90
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Set the following in some conf file, e.g. distro.conf, local.conf.
BB_DANGLINGAPPENDS_WARNONLY = "true"

Best Regards,
Chen Qi

On 06/27/2019 02:31 PM, danwe wrote:
> while using the command:
> daniel@daniel-VirtualBox:~/bbb$ MACHINE=beaglebone bitbake 
> core-immage-full cmdline I get the following ouput:
> ````
>
> Loading cache: 100% |############################################| 
> Time: 0:00:03
>
> Loaded 1358 entries from dependency cache.
>
> Parsing recipes: 100% |##########################################| 
> Time: 0:00:12
>
> Parsing of 832 .bb files complete (829 cached, 3 parsed). 1361 
> targets, 65 skipped, 0 masked, 0 errors.
>
> ERROR: No recipes available for:
>
> /home/daniel/meta-bbb/recipes-connectivity/openssh/openssh_7.%.bbappend
>
> /home/daniel/meta-bbb/recipes-qt/qt5/qtbase_git.bbappend
>
> /home/daniel/meta-bbb/recipes-support/ntp/ntp_4.2.%.bbappend
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> ````
>
> How can I solve this?
>
> Thanks.
>
> Daniel
>
>


--------------2C1659CC97801B46581D2B90
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Set the following in some conf file,
      e.g. distro.conf, local.conf.<br>
      BB_DANGLINGAPPENDS_WARNONLY = "true"<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 06/27/2019 02:31 PM, danwe wrote:<br>
    </div>
    <blockquote
cite="mid:CAEmXcAxcyTEv0tqmGrT9RyFch2ZxZWpAti5ssnh0+P0zTR9tqQ@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>while using the command: </div>
        <div>daniel@daniel-VirtualBox:~/bbb$ MACHINE=beaglebone bitbake
          core-immage-full cmdline I get the following ouput:</div>
        <div>````</div>
        <div>
          <p class="MsoNormal" style="margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang="EN-US">Loading cache: 100%
              |############################################| Time:
              0:00:03</span></p>
          <p class="MsoNormal" style="margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang="EN-US">Loaded 1358 entries
              from dependency cache.</span></p>
          <p class="MsoNormal" style="margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang="EN-US">Parsing recipes: 100%
              |##########################################| Time: 0:00:12</span></p>
          <p class="MsoNormal" style="margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang="EN-US">Parsing of 832 .bb
              files complete (829 cached, 3 parsed). 1361 targets, 65
              skipped, 0 masked, 0 errors.</span></p>
          <p class="MsoNormal" style="margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang="EN-US">ERROR: No recipes
              available for:</span></p>
          <p class="MsoNormal" style="margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang="EN-US"> 
              /home/daniel/meta-bbb/recipes-connectivity/openssh/openssh_7.%.bbappend</span></p>
          <p class="MsoNormal" style="margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang="EN-US"> 
              /home/daniel/meta-bbb/recipes-qt/qt5/qtbase_git.bbappend</span></p>
          <p class="MsoNormal" style="margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang="EN-US"> 
              /home/daniel/meta-bbb/recipes-support/ntp/ntp_4.2.%.bbappend</span></p>
          <p class="MsoNormal" style="margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang="EN-US"> </span></p>
          <p class="MsoNormal" style="margin:0cm 0cm
            0.0001pt;font-size:12pt;font-family:&quot;Liberation
            Serif&quot;,serif"><span lang="EN-US">Summary: There was 1
              ERROR message shown, returning a non-zero exit code.</span></p>
        </div>
        <div>````</div>
        <div><br>
        </div>
        <div>How can I solve this?</div>
        <div><br>
        </div>
        <div>Thanks.</div>
        <div><br>
        </div>
        <div>Daniel</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------2C1659CC97801B46581D2B90--

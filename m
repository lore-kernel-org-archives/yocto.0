Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 519F8E00F3E; Fri,  5 Aug 2016 10:41:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RDNS_DYNAMIC autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from s-opensource.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86316E00F38
	for <yocto@yoctoproject.org>; Fri,  5 Aug 2016 10:41:23 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by s-opensource.com (Postfix) with ESMTP id 22352A0E78;
	Fri,  5 Aug 2016 17:41:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from s-opensource.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZPpNdz5l5Ttx; Fri,  5 Aug 2016 17:41:24 +0000 (UTC)
Received: from [192.168.0.2] (unknown [82.236.136.171])
	by s-opensource.com (Postfix) with ESMTPSA id 0180FA0E77;
	Fri,  5 Aug 2016 17:41:23 +0000 (UTC)
From: Phil Coval <philippe.coval@osg.samsung.com>
References: <1470258571-29721-1-git-send-email-philippe.coval@osg.samsung.com>
	<CAJTo0LaWDDbfxsdpHaTpB0fx8S34S1XgxNPVsvFWfmXbiCc5Rg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Organization: https://blogs.s-osg.org/author/pcoval/
Message-ID: <8cd50177-e11a-b448-c307-61d4dad0e3b3@osg.samsung.com>
Date: Fri, 5 Aug 2016 19:41:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaWDDbfxsdpHaTpB0fx8S34S1XgxNPVsvFWfmXbiCc5Rg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, kishen.maloor@intel.com
Subject: Re: [meta-oic][PATCH] Update for IoTivity 1.1.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: philippe.coval@osg.samsung.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Aug 2016 17:41:26 -0000
Content-Type: multipart/alternative;
	boundary="------------E25633BCC7CEB611EC17D171"

--------------E25633BCC7CEB611EC17D171
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 04/08/16 10:36, Burton, Ross wrote:
>
> On 3 August 2016 at 22:09, Philippe Coval 
> <philippe.coval@osg.samsung.com 
> <mailto:philippe.coval@osg.samsung.com>> wrote:
>
>     +INSANE_SKIP_${PN}-dev = "ldflags"
>
>
> This happens because the recipe isn't respecting LDFLAGS.  You really 
> should be ensuring LDFLAGS is used by the build instead of skipping 
> the warning.
>
> Ross

Hi thanks for feedback,

Yes, I am considering this to be done upstream first, my plan is :

1/ to commit in upstream's maintenance branch (1.1-rel)
2/ propose an other patch to update SRCREV and remove those lines from 
this bitbake file.

Does this sound correct ?

Anyway, I wont be be able to touch this code until September.


By the way there is an other binary patch,
that can be applied to meta-oic (it was needed for 1.1.0 too), check:

https://github.com/TizenTeam/meta-oic/commit/1ef5a6dfbd13728892cba862ff92ffcf2d243204#
iotivity-sensorboard: Fix FTBFS by linking to pthread

Regards and stay tunned.

-- 
mailto:philippe.coval@osg.samsung.com  gpg:0x467094BC
https://blogs.s-osg.org/author/pcoval/


--------------E25633BCC7CEB611EC17D171
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    <div class="moz-cite-prefix">On 04/08/16 10:36, Burton, Ross wrote:<br>
    </div>
    <blockquote
cite="mid:CAJTo0LaWDDbfxsdpHaTpB0fx8S34S1XgxNPVsvFWfmXbiCc5Rg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 3 August 2016 at 22:09, Philippe
            Coval <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:philippe.coval@osg.samsung.com"
                target="_blank">philippe.coval@osg.samsung.com</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div id=":5l0" class="a3s aXjCH m156523ff9c6a7947">+INSANE_SKIP_${PN}-dev
                = "ldflags"<br>
                <br>
              </div>
            </blockquote>
          </div>
          <br>
          This happens because the recipe isn't respecting LDFLAGS.  You
          really should be ensuring LDFLAGS is used by the build instead
          of skipping the warning.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    <br>
    Hi thanks for feedback,<br>
    <br>
    Yes, I am considering this to be done upstream first, my plan is :<br>
    <br>
    1/ to commit in upstream's maintenance branch (1.1-rel)<br>
    2/ propose an other patch to update SRCREV and remove those lines
    from this bitbake file.<br>
    <br>
    Does this sound correct ? <br>
    <br>
    Anyway, I wont be be able to touch this code until September.<br>
    <br>
    <br>
    By the way there is an other binary patch,<br>
    that can be applied to meta-oic (it was needed for 1.1.0 too),
    check:<br>
    <br>
    <a class="moz-txt-link-freetext"
href="https://github.com/TizenTeam/meta-oic/commit/1ef5a6dfbd13728892cba862ff92ffcf2d243204">https://github.com/TizenTeam/meta-oic/commit/1ef5a6dfbd13728892cba862ff92ffcf2d243204#</a><br>
    iotivity-sensorboard: Fix FTBFS by linking to pthread<br>
    <br>
    Regards and stay tunned.<br>
    <br>
    <pre class="moz-signature" cols="72">-- 
<a class="moz-txt-link-freetext" href="mailto:philippe.coval@osg.samsung.com">mailto:philippe.coval@osg.samsung.com</a> gpg:0x467094BC
<a class="moz-txt-link-freetext" href="https://blogs.s-osg.org/author/pcoval/">https://blogs.s-osg.org/author/pcoval/</a>

</pre>
  </body>
</html>

--------------E25633BCC7CEB611EC17D171--

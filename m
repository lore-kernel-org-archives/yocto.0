Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 666CDE00931; Sun, 30 Nov 2014 21:28:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C9FCE0084A
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 21:28:39 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id sB15SbR5026967
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Sun, 30 Nov 2014 21:28:37 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Sun, 30 Nov 2014 21:28:36 -0800
Message-ID: <547BFC98.1050300@windriver.com>
Date: Mon, 1 Dec 2014 13:28:56 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: Qiang Yu <yuq825@gmail.com>
References: <CAKGbVbtPT_ZwgLs72HMGbk-VesbUyRiQBoQDG+UrGMFZWg4qwQ@mail.gmail.com>	<547ACF5C.8010403@windriver.com>	<CAKGbVbuLb-fzeGp78NxWYysVru=cweptGcjq2AuzVath+DC57g@mail.gmail.com>	<547BCC00.2070106@windriver.com>	<CAKGbVbsNf6VbfcS+juDCiifr6Z0kYmyu32iNH=a9SOwt6248Dg@mail.gmail.com>	<547BE038.8030108@windriver.com>
	<CAKGbVbvysuHY5V=0Fdu1X5FX1JPkYpF27X_GFPe54kRDOLdonw@mail.gmail.com>
In-Reply-To: <CAKGbVbvysuHY5V=0Fdu1X5FX1JPkYpF27X_GFPe54kRDOLdonw@mail.gmail.com>
X-Originating-IP: [128.224.162.226]
Cc: yocto@yoctoproject.org
Subject: Re: When to create a new build directory for yocto?
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
X-List-Received-Date: Mon, 01 Dec 2014 05:28:43 -0000
Content-Type: multipart/alternative;
	boundary="------------000205070203060006010202"

--------------000205070203060006010202
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/01/2014 12:45 PM, Qiang Yu wrote:
>
>
>     It's possible that you are using (or might use) different layer
>     configurations for different builds.
>     One build might have a bbappend file that another build doesn't need.
>
> Yes, you are right. I use different conf/bblayers.conf for different 
> SOC. But within the same SOC's different output
> (board image, SDK), I just change MACHINE and SDKMACHINE. Is it safe 
> to build all outputs of the same SOC
> in one build dir?

Yes.

>     Also, different builds may have different DISTRO_FEATURES.
>     Thus, having different deploy directories is better. Otherwise,
>     your package feeds might be broken. And you would suffer trying to
>     maintain it.
>
> You mean I can't build two output with different DISTRO_FEATURES in 
> the same build dir.
> Any other config var? What about MACHINE and SDKMACHINE?

Yocto doesn't ensure that changing distro features in the same build 
directory works.
It might work, but it's also possible that it doesn't.

Changing MACHINE and SDKMACHINE is OK.

//Chen Qi

--------------000205070203060006010202
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/01/2014 12:45 PM, Qiang Yu wrote:<br>
    </div>
    <blockquote
cite="mid:CAKGbVbvysuHY5V=0Fdu1X5FX1JPkYpF27X_GFPe54kRDOLdonw@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
              <div bgcolor="#FFFFFF" text="#000000">
                <div><br>
                  It's possible that you are using (or might use)
                  different layer configurations for different builds.<br>
                  One build might have a bbappend file that another
                  build doesn't need. </div>
              </div>
            </blockquote>
            <div>Yes, you are right. I use different conf/bblayers.conf
              for different SOC. But within the same SOC's different
              output</div>
            <div>(board image, SDK), I just change MACHINE and
              SDKMACHINE. Is it safe to build all outputs of the same
              SOC</div>
            <div>in one build dir?</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Yes.<br>
    <br>
    <blockquote
cite="mid:CAKGbVbvysuHY5V=0Fdu1X5FX1JPkYpF27X_GFPe54kRDOLdonw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">
            <div> </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
              <div bgcolor="#FFFFFF" text="#000000">
                <div> Also, different builds may have different
                  DISTRO_FEATURES.<br>
                  Thus, having different deploy directories is better.
                  Otherwise, your package feeds might be broken. And you
                  would suffer trying to maintain it.<br>
                </div>
              </div>
            </blockquote>
            <div>You mean I can't build two output with different
              DISTRO_FEATURES in the same build dir.</div>
            <div>Any other config var? What about MACHINE and
              SDKMACHINE?</div>
            <div> </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Yocto doesn't ensure that changing distro features in the same build
    directory works.<br>
    It might work, but it's also possible that it doesn't.<br>
    <br>
    Changing MACHINE and SDKMACHINE is OK.<br>
    <br>
    //Chen Qi<br>
  </body>
</html>

--------------000205070203060006010202--

Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9ECCBE00720; Thu, 23 Aug 2018 20:08:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 346C5E0043F
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 20:08:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7O38DOH021957
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 20:08:14 -0700
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Thu, 23 Aug 2018 20:08:12 -0700
To: <yocto@yoctoproject.org>
References: <CAMmNTe=6pGXZ2MgzE_orpchcQSCrgc0mS+30U0rFP9e_iXC0Ag@mail.gmail.com>
	<CAMmNTenu-UJGScoGiT39PQUozApr5DqWEU=siF5-61Q98AkfLA@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <6c8cc905-1ccd-aa05-fac8-8aa9a8a71c47@windriver.com>
Date: Fri, 24 Aug 2018 11:12:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAMmNTenu-UJGScoGiT39PQUozApr5DqWEU=siF5-61Q98AkfLA@mail.gmail.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: Unable to add a dev package to the Extended SDK
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
X-List-Received-Date: Fri, 24 Aug 2018 03:08:15 -0000
Content-Type: multipart/alternative;
	boundary="------------BD8889D6C7219175BA8FF24C"

--------------BD8889D6C7219175BA8FF24C
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

I think using IMAGE_INSTALL_append = " curl", and then `bitbake 
core-image-minimal -c populate_sdk_ext" is sufficient.
After this, you can develop against curl libs/headers inside the sdk.

Best Regards,
Chen Qi

On 08/23/2018 04:38 PM, Gabriele Favalessa wrote:
> Hi!
>
> I'm attempting to add `curl-dev` to an Extensible SDK for yocto (sumo 
> release) with target machine qemuarm.
>
> On a fresh checkout I've added to `conf/local.conf`
>
>   TOOLCHAIN_TARGET_TASK_append = " curl-dev"
>
> and then run `bitbake -c populate_sdk_ext core-image-minimal`.
>
> This is the error I get:
>
> ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Could not invoke 
> dnf. Command '/vol/space/poky-sumo/build/tmp/work/x8
> 6_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/recipe-sysroot-native/usr/bin/dnf 
> -y -c /vol/space/poky-sumo/bui
> ld/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.5.1/sysroots/none/etc/dnf/dnf
> .conf 
> --setopt=reposdir=/vol/space/poky-sumo/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sd
> k/image/opt/poky/2.5.1/sysroots/none/etc/yum.repos.d 
> --repofrompath=oe-repo,/vol/space/poky-sumo/build/tmp/work/x86_64-
> nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-sdk-repo 
> --installroot=/vol/space/poky-sumo/build/tmp/work/x86_64-
> nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.5.1/sysroots/none 
> --setopt=logdir=/vol/space/pok
> y-sumo/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/temp 
> --nogpgcheck install curl-dev' retu
> rned 1:
> Added oe-repo repo from 
> /vol/space/poky-sumo/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe
> -sdk-repo
> Last metadata expiration check: 0:00:00 ago on Thu 23 Aug 2018 
> 07:38:40 AM UTC.
> Error:
>  Problem: conflicting requests
>   - package curl-dev-7.61.0-r0.armv5e does not have a compatible 
> architecture
>
> (The full log is attached)
>
> I'm new to yocto and I have no clue how to proceed to fix the problem. 
> I haven't found anything relevant in the official documentation or on 
> the internet.
>
> Thanks
>
> Gabriele
>
>


--------------BD8889D6C7219175BA8FF24C
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">I think using IMAGE_INSTALL_append = "
      curl", and then `bitbake core-image-minimal -c populate_sdk_ext"
      is sufficient.<br>
      After this, you can develop against curl libs/headers inside the
      sdk.<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 08/23/2018 04:38 PM, Gabriele Favalessa wrote:<br>
    </div>
    <blockquote
cite="mid:CAMmNTenu-UJGScoGiT39PQUozApr5DqWEU=siF5-61Q98AkfLA@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div class="gmail_quote">
          <div dir="ltr">Hi! 
            <div><br>
            </div>
            <div>I'm attempting to add `curl-dev` to an Extensible SDK
              for yocto (sumo release) with target machine qemuarm. </div>
            <div><br>
            </div>
            <div>On a fresh checkout I've added to `conf/local.conf`</div>
            <div><br>
            </div>
            <div>  TOOLCHAIN_TARGET_TASK_append = " curl-dev"</div>
            <div><br>
            </div>
            <div>and then run `bitbake -c populate_sdk_ext
              core-image-minimal`.<br>
            </div>
            <div><br>
            </div>
            <div>This is the error I get:</div>
            <div><br>
            </div>
            <div>
              <div>ERROR: buildtools-tarball-1.0-r0 do_populate_sdk:
                Could not invoke dnf. Command
                '/vol/space/poky-sumo/build/tmp/work/x8</div>
              <div>6_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/recipe-sysroot-native/usr/bin/dnf
                -y -c /vol/space/poky-sumo/bui</div>
              <div>ld/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.5.1/sysroots/none/etc/dnf/dnf</div>
              <div>.conf
--setopt=reposdir=/vol/space/poky-sumo/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sd</div>
              <div>k/image/opt/poky/2.5.1/sysroots/none/etc/yum.repos.d
--repofrompath=oe-repo,/vol/space/poky-sumo/build/tmp/work/x86_64-</div>
              <div>nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-sdk-repo
--installroot=/vol/space/poky-sumo/build/tmp/work/x86_64-</div>
              <div>nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.5.1/sysroots/none
                --setopt=logdir=/vol/space/pok</div>
              <div>y-sumo/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/temp
                --nogpgcheck install curl-dev' retu</div>
              <div>rned 1:</div>
              <div>Added oe-repo repo from
/vol/space/poky-sumo/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe</div>
              <div>-sdk-repo</div>
              <div>Last metadata expiration check: 0:00:00 ago on Thu 23
                Aug 2018 07:38:40 AM UTC.</div>
              <div>Error: </div>
              <div> Problem: conflicting requests</div>
              <div>  - package curl-dev-7.61.0-r0.armv5e does not have a
                compatible architecture</div>
            </div>
            <div><br>
            </div>
            <div>(The full log is attached)</div>
            <div><br>
            </div>
            <div>I'm new to yocto and I have no clue how to proceed to
              fix the problem. I haven't found anything relevant in the
              official documentation or on the internet.</div>
            <div><br>
            </div>
            <div>Thanks</div>
            <div><br>
            </div>
            <div>Gabriele</div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------BD8889D6C7219175BA8FF24C--

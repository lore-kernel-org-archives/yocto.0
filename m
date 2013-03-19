Return-Path: <Qi.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C71FE01410
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 22:29:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2J5TTLt027630
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 22:29:29 -0700 (PDT)
Received: from [128.224.163.154] (128.224.163.154) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Mon, 18 Mar 2013 22:29:29 -0700
Message-ID: <5147F7BC.4060503@windriver.com>
Date: Tue, 19 Mar 2013 13:29:32 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAGX3a9-_cLyZWY=L1=yB3_aDYMPgP4hvcHP3LZ7v1PYrXom-kw@mail.gmail.com>
In-Reply-To: <CAGX3a9-_cLyZWY=L1=yB3_aDYMPgP4hvcHP3LZ7v1PYrXom-kw@mail.gmail.com>
X-Originating-IP: [128.224.163.154]
Subject: Re: bitbaking error with hello world recipe
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
X-List-Received-Date: Tue, 19 Mar 2013 05:29:30 -0000
Content-Type: multipart/alternative;
	boundary="------------060704080104060904090204"

--------------060704080104060904090204
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 03/19/2013 10:11 AM, Sudhangathan B S wrote:
> Hello, I'm new to oe and yocto project..
>
> I simply created my own meta-dese layer, added it in layers.conf
>
> *This is the structure of meta-dese folder:*
> *
> *
> suan@edcn400:~/pokybuilds$ ls -R /home/suan/poky/meta-dese/
> /home/suan/poky/meta-dese/:
> conf  recipes-dese
>
> /home/suan/poky/meta-dese/conf:
> layer.conf
>
> /home/suan/poky/meta-dese/recipes-dese:
> files hello-1.0.bb <http://hello-1.0.bb>
>
try renaming it to hello_1.0.bb

> /home/suan/poky/meta-dese/recipes-dese/files:
> hello.c
> suan@edcn400:~/pokybuilds$
>
>
> *I have quoted the output here:*
> *
> *
> suan@edcn400:~/pokybuilds$ bitbake core-image-minimal
> Loading cache: 100% 
> |###################################################################################################################################| 
> ETA:  00:00:00
> Loaded 1118 entries from dependency cache.
> WARNING: No bb files matched BBFILE_PATTERN_dese 
> '^/home/suan/poky/meta-dese/'
>
> Build Configuration:
> BB_VERSION        = "1.17.1"
> BUILD_SYS         = "i686-linux"
> NATIVELSBSTRING   = "Ubuntu-12.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "qemuarm"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3+snapshot-20130319"
> TUNE_FEATURES     = "armv5 thumb dsp"
> TARGET_FPU        = "soft"
> meta
> meta-yocto
> meta-yocto-bsp
> meta-dese         = "master:164a4cb2fc64e76836182ad2d412343a7b26b964"
>
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'hello' (but 
> /home/suan/poky/meta/recipes-core/images/core-image-minimal.bb 
> <http://core-image-minimal.bb> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'hello' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['hello']
> ERROR: Required build target 'core-image-minimal' has no buildable 
> providers.
> Missing or unbuildable dependency chain was: ['core-image-minimal', 
> 'hello']
>
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit 
> code.
> suan@edcn400:~/pokybuilds$
>
> How can I proceed from here..??
> ---------------------------------
> Sudhangathan BS
> Ph:(+91) 9731-905-205
> ---------------------------------
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--------------060704080104060904090204
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 03/19/2013 10:11 AM, Sudhangathan B
      S wrote:<br>
    </div>
    <blockquote
cite="mid:CAGX3a9-_cLyZWY=L1=yB3_aDYMPgP4hvcHP3LZ7v1PYrXom-kw@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <div dir="ltr">Hello, I'm new to oe and yocto project..
        <div><br>
        </div>
        <div>I simply created my own meta-dese layer, added it in
          layers.conf</div>
        <div><br>
        </div>
        <div style=""><b>This is the structure of meta-dese folder:</b></div>
        <div style=""><b><br>
          </b></div>
        <div style="">
          <div>suan@edcn400:~/pokybuilds$ ls -R
            /home/suan/poky/meta-dese/</div>
          <div>/home/suan/poky/meta-dese/:</div>
          <div>conf &nbsp;recipes-dese</div>
          <div><br>
          </div>
          <div>/home/suan/poky/meta-dese/conf:</div>
          <div>layer.conf</div>
          <div><br>
          </div>
          <div>/home/suan/poky/meta-dese/recipes-dese:</div>
          <div>files &nbsp;<a moz-do-not-send="true"
              href="http://hello-1.0.bb">hello-1.0.bb</a></div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    try renaming it to hello_1.0.bb<br>
    <br>
    <blockquote
cite="mid:CAGX3a9-_cLyZWY=L1=yB3_aDYMPgP4hvcHP3LZ7v1PYrXom-kw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div style="">
          <div>/home/suan/poky/meta-dese/recipes-dese/files:</div>
          <div>hello.c</div>
          <div>suan@edcn400:~/pokybuilds$&nbsp;</div>
          <div><br>
          </div>
        </div>
        <div><br>
        </div>
        <div style=""><b>I have quoted the output here:</b></div>
        <div style=""><b><br>
          </b></div>
        <div style="">
          <div>suan@edcn400:~/pokybuilds$ bitbake core-image-minimal</div>
          <div>Loading cache: 100%
            |###################################################################################################################################|
            ETA: &nbsp;00:00:00</div>
          <div>Loaded 1118 entries from dependency cache.</div>
          <div>WARNING: No bb files matched BBFILE_PATTERN_dese
            '^/home/suan/poky/meta-dese/'</div>
          <div><br>
          </div>
          <div>Build Configuration:</div>
          <div>BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;= "1.17.1"</div>
          <div>BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; = "i686-linux"</div>
          <div>NATIVELSBSTRING &nbsp; = "Ubuntu-12.04"</div>
          <div>TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp;= "arm-poky-linux-gnueabi"</div>
          <div>MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; = "qemuarm"</div>
          <div>DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;= "poky"</div>
          <div>
            DISTRO_VERSION &nbsp; &nbsp;= "1.3+snapshot-20130319"</div>
          <div>TUNE_FEATURES &nbsp; &nbsp; = "armv5 thumb dsp"</div>
          <div>TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;= "soft"</div>
          <div>meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
          <div>meta-yocto &nbsp; &nbsp; &nbsp; &nbsp;</div>
          <div>meta-yocto-bsp &nbsp; &nbsp;</div>
          <div>meta-dese &nbsp; &nbsp; &nbsp; &nbsp; =
            "master:164a4cb2fc64e76836182ad2d412343a7b26b964"</div>
          <div><br>
          </div>
          <div>NOTE: Resolving any missing task queue dependencies</div>
          <div>ERROR: Nothing RPROVIDES 'hello' (but
            /home/suan/poky/meta/recipes-core/images/<a
              moz-do-not-send="true" href="http://core-image-minimal.bb">core-image-minimal.bb</a>
            RDEPENDS on or otherwise requires it)</div>
          <div>NOTE: Runtime target 'hello' is unbuildable, removing...</div>
          <div>Missing or unbuildable dependency chain was: ['hello']</div>
          <div>ERROR: Required build target 'core-image-minimal' has no
            buildable providers.</div>
          <div>Missing or unbuildable dependency chain was:
            ['core-image-minimal', 'hello']</div>
          <div><br>
          </div>
          <div>Summary: There was 1 WARNING message shown.</div>
          <div>Summary: There were 2 ERROR messages shown, returning a
            non-zero exit code.</div>
          <div>suan@edcn400:~/pokybuilds$</div>
          <div><br>
          </div>
          <div style="">How can I proceed from here..??</div>
        </div>
        <div>
          <div>---------------------------------<br>
            Sudhangathan BS<br>
            Ph:(+91) 9731-905-205<br>
            ---------------------------------</div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------060704080104060904090204--

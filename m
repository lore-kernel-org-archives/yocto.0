Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC6F5E00D53; Wed, 24 Jul 2019 01:28:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1BA9E00C25
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 01:28:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x6O8SF0t018661
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 24 Jul 2019 01:28:15 -0700 (PDT)
Received: from [128.224.162.136] (128.224.162.136) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 24 Jul 2019 01:28:15 -0700
To: Russell Peterson <peterson.russell@gmail.com>, <yocto@yoctoproject.org>
References: <CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com>
From: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <fba9017e-ffd3-f44c-c75a-8be6e46d10b9@windriver.com>
Date: Wed, 24 Jul 2019 16:28:12 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com>
X-Originating-IP: [128.224.162.136]
Subject: Re: PREMIRROR
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
X-List-Received-Date: Wed, 24 Jul 2019 08:28:18 -0000
Content-Type: multipart/alternative;
	boundary="------------7CB375AA48A49838FDCBB003"
Content-Language: en-US

--------------7CB375AA48A49838FDCBB003
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit


On 7/24/19 4:49 AM, Russell Peterson wrote:
> Hello,
>
> I am looking to have bitbake pick up files for a particular recipe 
> from a local git repository using the PREMIRROR functionality.
>
> Basically, the recipe (bb file) points to github but in my local build 
> I add PREMIRROR_prepend = "git://.*/.* 
> git:///local/path/BASENAME;protocol=file\n"
>
> I will probably make the git regular expression more exact for my 
> specific github repo but this works for now.
>
> This all works (as I deleted the github download from the local 
> download directory) because I can see in the do_fetch log and the 
> correct (local) repo was found and placed in the DL_DIR.
>
> Problem is, do_unpack fails because it appears to be looking for the 
> original (github) SRC_URI.  Then it complains about "no up to date 
> source found: clone or directory not available or not up to date 
> (shallow clone not enabled)"


Maybe you can use BB_GENERATE_MIRROR_TARBALLS to generate git repo 
tarball and put it to your download mirror.

See: 
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-bb-BB_GENERATE_MIRROR_TARBALLS

         and

https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-DL_DIR


Regards,

Yi


>
> Any help on what I am missing would be appreciated.
>
> Regards,
>
> Russell
>
>
>

--------------7CB375AA48A49838FDCBB003
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 7/24/19 4:49 AM, Russell Peterson
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hello,<br>
        </div>
        <div><br>
        </div>
        <div>I am looking to have bitbake pick up files for a particular
          recipe from a local git repository using the PREMIRROR
          functionality.</div>
        <div><br>
        </div>
        <div>Basically, the recipe (bb file) points to github but in my
          local build I add PREMIRROR_prepend = "git://.*/.* 
          git:///local/path/BASENAME;protocol=file\n"</div>
        <div><br>
        </div>
        <div>I will probably make the git regular expression more exact
          for my specific github repo but this works for now.</div>
        <div><br>
        </div>
        <div>This all works (as I deleted the github download from the
          local download directory) because I can see in the do_fetch
          log and the correct (local) repo was found and placed in the
          DL_DIR.</div>
        <div><br>
        </div>
        <div>Problem is, do_unpack fails because it appears to be
          looking for the original (github) SRC_URI.  Then it complains
          about "no up to date source found: clone or directory not
          available or not up to date (shallow clone not enabled)"</div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>Maybe you can use BB_GENERATE_MIRROR_TARBALLS to generate git
      repo tarball and put it to your download mirror.<br>
    </p>
    <p>See:
<a class="moz-txt-link-freetext" href="https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-bb-BB_GENERATE_MIRROR_TARBALLS">https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-bb-BB_GENERATE_MIRROR_TARBALLS</a></p>
    <p>        and<br>
    </p>
    <p>       
<a class="moz-txt-link-freetext" href="https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-DL_DIR">https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-DL_DIR</a><br>
    </p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>Yi</p>
    <p><br>
    </p>
    <blockquote type="cite"
cite="mid:CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com">
      <div dir="ltr">
        <div><br>
        </div>
        <div>Any help on what I am missing would be appreciated.</div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div><br>
        </div>
        <div>Russell</div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

--------------7CB375AA48A49838FDCBB003--

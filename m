Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 766D2E00B21; Sat, 10 Nov 2018 07:40:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64838E0090E
	for <yocto@yoctoproject.org>; Sat, 10 Nov 2018 07:40:18 -0800 (PST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-10) with ESMTPSA id
	wAAFeFVV015496
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Sat, 10 Nov 2018 15:40:16 GMT
Message-ID: <dd669b29601e704c1520d6bf4003d3655048a7a3.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Michael Halstead <mhalstead@linuxfoundation.org>, yocto@yoctoproject.org
Date: Sat, 10 Nov 2018 15:40:15 +0000
In-Reply-To: <20181110122532.4642-1-mhalstead@linuxfoundation.org>
References: <20181110122532.4642-1-mhalstead@linuxfoundation.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.2 at dan
X-Virus-Status: Clean
Cc: rpurdie@linuxfoundation.org
Subject: Re: [yocto-autobuilder-helper][PATCH] config.json: Enable dedicated sstate during build and remove after
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
X-List-Received-Date: Sat, 10 Nov 2018 15:40:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2018-11-10 at 04:25 -0800, Michael Halstead wrote:
> Without any sstate available oe-selftest cannot run in parallel. Set
> sstate to a
> location used only by these builds and remove it as the last step.
> 
> Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
> ---
>  config.json | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/config.json b/config.json
> index 8a694d7..d898bf3 100644
> --- a/config.json
> +++ b/config.json
> @@ -147,7 +147,7 @@
>          },
>         "nightly-bringup" : {
>              "TEMPLATE" : "nightly-arch",
> -            "SSTATEDIR" : [],
> +            "SSTATEDIR" : ["${BUILDDIR}/../sstate"],
>              "MACHINE" : "qemuarm64",
>              "step2" : {
>                  "MACHINE" : "qemux86-64"
> @@ -168,6 +168,9 @@
>                  ],
>                  "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1
> oe-selftest --skip-tests distrodata.Distrodata.test_checkpkg -j 15"],
>                  "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
> +            },
> +            "step7" : {
> +               "EXTRACMDS" : ["rm -rf ${BUILDDIR}/../sstate"]
>              }
>          },
>          "nightly-mips" : {

Unfortunately this won't work as BUILDDIR is a shell variable in this
case. I've tweaked the scripts/config a little differently to try and
speed up the bringup tests and fired off another couple of test builds.

Cheers,

Richard



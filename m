Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81397E00D14; Fri, 21 Dec 2018 05:58:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDB02E00950
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2018 05:58:04 -0800 (PST)
Received: by mail-it1-f178.google.com with SMTP id x124so15781001itd.1
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2018 05:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/C/9L8s0jBF3X1oXQRbrrcD/aLSaMOmoAZJmi0h5fxo=;
	b=jF6d2t7m7K6G68dU7yk197SDue5OiRtA3RdBxn3lMFU3l0LR5q6MX9go2wuBEWfsCa
	UFmq+8elA5KwwGXth2BwBGNaQaJzVPQw0hd2/j2eiRZ6KkDqhNT7eMQQf6DRi+9j8RRm
	NiEs+O+9iQVGyoz9sg1k/t4wmytU/n8OWR4bVwmou+z99yWJDVD7K30cEkEDv47VN87O
	aIG5w8q0j4Q3OiaBfq6E/rgnH2TGrqcr72risq+t3XFO+K+h95v25Cp9kGhXyqfZ8ErP
	TK3OVv99OOdY7kwZx6mPhGp779e0I+koMXnfPp1CG7ngpD0k3XyhDQ8l7bM7zh/YrUPr
	TSQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/C/9L8s0jBF3X1oXQRbrrcD/aLSaMOmoAZJmi0h5fxo=;
	b=e/daFPn8B6TLHGtzoJWxWNWLx58VR7TGgwhdennZFJPEtgsXLiy6EH2iSYg0lyWC0T
	0BZGkD6hpwYIQ329CZDlKTUJXEsjunWKQraIptJu1pHKEO0nNm5Yas6/P+ItXc0we4D7
	Y39vzRNDkjX6CyQNySupug+qgjdo8vXNMh/YReF+Nm5s/uLfXpkCdva2qca9Vwvde39/
	7Vax9OBWLKzzc3uC10vIoir7J16eE3aqmBhWv0VZTWgsWDNeXYvvJnObNNBdF2zvq0Tr
	6bHocpwdiVTDZjqeZkq3z06juV7fHkzNEPLRCGxJGXoPMPOcW7EXXoqaEn8O3F/k5mtz
	EdHQ==
X-Gm-Message-State: AA+aEWbOc3rKqND7LUNe/iZeR+ar3sDandNFhgZUP80h/eDJbQIIES82
	RV8EQFuV5CC8VJxQObUeoLdl12G8ezoNngtC6sqWgyLDsFw=
X-Google-Smtp-Source: AFSGD/VYlOmokhwJOIEmOeJDm41hwHsWC7+pP65Te3co/FEEHpCS/5Bus+lPAs/ZUQxirr+9RyFNhygQexSfET24rrs=
X-Received: by 2002:a02:9c53:: with SMTP id h19mr1600560jal.31.1545400684246; 
	Fri, 21 Dec 2018 05:58:04 -0800 (PST)
MIME-Version: 1.0
References: <CAB6-Vt+dvn1VwmvX7Q854rDvZ2qPqkRhm=uX3sgS0nfBkokLXg@mail.gmail.com>
In-Reply-To: <CAB6-Vt+dvn1VwmvX7Q854rDvZ2qPqkRhm=uX3sgS0nfBkokLXg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 21 Dec 2018 13:57:51 +0000
Message-ID: <CAJTo0Lau_jdwPCxHZtd+MN7a-fVscq-w4fkPvPAzr3tBpibsqQ@mail.gmail.com>
To: Einar Vading <yocto-ml@vading.se>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Python3 and pathlib/ntpath
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
X-List-Received-Date: Fri, 21 Dec 2018 13:58:05 -0000
Content-Type: text/plain; charset="UTF-8"

pathlib is in python3-misc:

$ oe-pkgdata-util find-path */pathlib.py
python3-misc: /usr/lib/python3.5/pathlib.py

And Meson in Thud at least has a dependency on python3-misc, so you
shoudn't need to do anything.

What release are you using?

Or, are you trying to install Meson from source inside the image,
instead of using the recipe?  In that case ensure that you have all of
Python installed, easiest way is to add python3 to IMAGE_INSTALL.

Ross

On Fri, 21 Dec 2018 at 13:17, Einar Vading <yocto-ml@vading.se> wrote:
>
> Hi,
>
> I was trying to install meson on target for a machine that creates a
> docker image for us. When I try to start meson however I get an error
> message that pathlib can't be found. With the patch below I got it to
> work but my question is if there is another way? Or if the patch would
> be acceptable upstream?
>
> Best regards,
> Einar
>
> diff --git a/meta/recipes-devtools/python/python3/python3-manifest.json
> b/meta/recipes-devtools/python/python3/python3-manifest.json
> index 2491f36db2..42a5680c65 100644
> --- a/meta/recipes-devtools/python/python3/python3-manifest.json
> +++ b/meta/recipes-devtools/python/python3/python3-manifest.json
> @@ -154,10 +154,12 @@
>              "${libdir}/python3.5/__pycache__/keyword.*.pyc",
>              "${libdir}/python3.5/__pycache__/linecache.*.pyc",
>              "${libdir}/python3.5/__pycache__/locale.*.pyc",
> +            "${libdir}/python3.5/__pycache__/ntpath.*.pyc",
>              "${libdir}/python3.5/__pycache__/opcode.*.pyc",
>              "${libdir}/python3.5/__pycache__/operator.*.pyc",
>              "${libdir}/python3.5/__pycache__/optparse.*.pyc",
>              "${libdir}/python3.5/__pycache__/os.*.pyc",
> +            "${libdir}/python3.5/__pycache__/pathlib.*.pyc",
>              "${libdir}/python3.5/__pycache__/platform.*.pyc",
>              "${libdir}/python3.5/__pycache__/posixpath.*.pyc",
>              "${libdir}/python3.5/__pycache__/re.*.pyc",
> @@ -269,10 +271,12 @@
>              "${libdir}/python3.5/linecache.py",
>              "${libdir}/python3.5/locale.py",
>              "${libdir}/python3.5/new.py",
> +            "${libdir}/python3.5/ntpath.py",
>              "${libdir}/python3.5/opcode.py",
>              "${libdir}/python3.5/operator.py",
>              "${libdir}/python3.5/optparse.py",
>              "${libdir}/python3.5/os.py",
> +            "${libdir}/python3.5/pathlib.py",
>              "${libdir}/python3.5/platform.py",
>              "${libdir}/python3.5/posixpath.py",
>              "${libdir}/python3.5/re.py",
> @@ -1146,4 +1150,4 @@
>          ],
>          "summary": "Python XML-RPC support"
>      }
> -}
> \ No newline at end of file
> +}
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


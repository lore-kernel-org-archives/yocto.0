Return-Path: <me@herrie.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A205E00D38; Tue, 16 Apr 2019 02:25:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [149.210.149.69 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 329 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Apr 2019 02:25:03 PDT
Received: from outbound0.mail.transip.nl (outbound0.mail.transip.nl
	[149.210.149.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 444FCE00D33
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2019 02:25:03 -0700 (PDT)
Received: from submission8.mail.transip.nl (submission8.mail.transip.nl
	[149.210.149.41])
	by outbound0.mail.transip.nl (Postfix) with ESMTP id 44k0F15C45zxNpW;
	Tue, 16 Apr 2019 11:19:33 +0200 (CEST)
Received: from transip.email (pr.ams4.transip.net [37.97.254.72])
	by submission8.mail.transip.nl (Postfix) with ESMTPA id
	44k0F00966z2ZNxR; Tue, 16 Apr 2019 11:19:29 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 16 Apr 2019 11:19:29 +0200
From: Herman van Hazendonk <me@herrie.org>
To: Evan O'Loughlin <evan.oloughlin@vitalograph.ie>
Mail-Reply-To: yoctoproject.org@herrie.org
In-Reply-To: <2EE3E45FEAD8944697CC29BFE83DD70F37B5BEC0@VIT-IE-EX01.vitalograph.local>
References: <2EE3E45FEAD8944697CC29BFE83DD70F37B5BEC0@VIT-IE-EX01.vitalograph.local>
Message-ID: <45bcdd25a9d2960ca4b639a8527658ac@herrie.org>
X-Sender: me@herrie.org
User-Agent: Webmail
X-Scanned-By: ClueGetter at submission8.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	s=transip-a; d=herrie.org; t=1555406373; h=from:reply-to:subject:to:
	cc:references:in-reply-to:date:mime-version:content-type;
	bh=jQOI9Ng2oA4kaXvJh/7wuDMKZ9kh44sp+ZXlgxJv6KY=;
	b=ap9eSzaV4HD4qgO93daM99ImKweWWMXJLckB2IAawtqa91nOnOj6Ksya+sPfRO1y9oo5JF
	NYQmLYM5qnjrEnWMx3RUJSnvK36u8bLFxqwYXcNOYMtbAa7p4NKmAeCQh7UhpDxSEzvasb
	jc3/jfmYr0+KD2PRHkOL1kPvVldYtLHfhmyN/7EjVFfbbFANZuK9C+yP/x8BeQRlmimpXN
	KGhi/rIB2ZwqsT7w4LlcgplTKcFjY62w16yabiMX14rNraFbQnF4QVdKwyYdXN//p+aQfn
	oz5lpxZPdiYOsqfgR0pkLu3IEQ74i5WlfQLRvnO8ODt4HGzq9B7pC2hPMiKYJA==
X-Report-Abuse-To: abuse@transip.nl
Cc: yocto@yoctoproject.org
Subject: Re: Screenshot tool
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yoctoproject.org@herrie.org
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 Apr 2019 09:25:06 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

Hi Evan,

We don't currently have a 4.9 kernel running for our project since we're 
working mainly with mobile devices which are stuck on 3.4 and 3.18 
kernels for now, however we do have small screenshot utility which we 
have as a plugin to our compositor which we have been using since early 
Qt5 releases and we're currently on Qt 5.11/5.12.

Might be worth to give a go at your end:

https://github.com/webOS-ports/luna-next/blob/f5fc4c8af0d0c6f74f57d3963eb570966bc8fa55/plugins/compositor/screenshooter.cpp

And the header file at:

https://github.com/webOS-ports/luna-next/blob/f5fc4c8af0d0c6f74f57d3963eb570966bc8fa55/plugins/compositor/screenshooter.h

Hope this helps.

Best regards,
Herman

On 2019-04-16 09:15, Evan O'Loughlin wrote:
> Hi,
> 
> I’m currently using yocto to build a custom OS based on Linux 4.9 for
> our hardware:
> Build Configuration:
> BB_VERSION        = "1.32.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-16.04"
> TARGET_SYS        = "arm-linux-gnueabi"
> MACHINE           = "CUSTOM_MACHINE_NAME"
> DISTRO            = "arago"
> DISTRO_VERSION    = "2017.12"
> TUNE_FEATURES     = "arm armv7a vfp thumb neon       
> callconvention-hard"
> TARGET_FPU        = "hard"
> meta-processor-sdk = "HEAD:92db4d8023d88ab59fab2953e7447ec0bd5a6db1"
> meta-ros          = "HEAD:e2566402ab108a19634354a934788109422cf409"
> meta-arago-distro
> meta-arago-extras = "HEAD:5b2a44b0c4d989133bc13d59398fd10375d351bb"
> meta-browser      = "HEAD:26d50665e2f7223c5f4ad7481a8d2431e7cb55fb"
> meta-openamp      = "HEAD:8a214032bfb7e8124bc1485c70c69f7d60abb819"
> meta-qt5          = "HEAD:2c9f0e4eb0e9097f6f872ec1e1d81768a8ab5f1b"
> meta-networking
> meta-ruby
> meta-python
> meta-oe
> meta-gnome
> meta-multimedia   = "HEAD:b40116cf457b88a2db14b86fda9627fb34d56ae6"
> meta-ti           = "HEAD:3dc08477529b31ce887bb22a08201a843ded48f0"
> meta-linaro-toolchain
> meta-optee        = "HEAD:d73e794c7e7ebb1cc5bf495a52a72b26fb118250"
> meta              = "HEAD:39fd8c129e2bff7f2f1649b7f6e036ccc50fd5d8"
> meta-custom  = "########################################"
> meta-printing     = "morty:72811bc3755d1a943fa2a2e79601781b44a77420"
> 
> 
> We run a Qt5 application using EGLFS but can no longer capture 
> screenshots.
> In a previous yocto build based on Linux 3.x we were able to use a
> screenshot tool which effectively just read /dev/fb0 to a file.
> 
> I believe this was a change to how the underlying drivers interact
> with the GPU/Screen - I've started reading up on KMS/DRM.
> 
> 
> Does anyone know is there a utility/tool which I could use to capture
> the Qt5 application as its drawn on screen?
> 
> 
> Regards,
> Evan


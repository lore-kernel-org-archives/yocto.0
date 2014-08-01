Return-Path: <kevin.thierry@open.eurogiciel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02C03E006DB; Fri,  1 Aug 2014 07:30:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1854CE00543
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 07:30:08 -0700 (PDT)
Received: by mail-we0-f180.google.com with SMTP id w61so4463427wes.39
	for <yocto@yoctoproject.org>; Fri, 01 Aug 2014 07:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=open.eurogiciel.org; s=google;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=kbn3xyjcbOp6hfpcmcNbbY3/3GSfUHODL7/m0ye7GPQ=;
	b=EiZXWKsSQ/9cEpl3B+q3ldt9EW37ZH3md/OGF8JdDAwIvjpP6THM+q5GojDGiYF8j8
	sLrJcMpQKmWRiIpMIybbWfEU/yr84wjtJurwQlX3x5qH1htYoKZYG1tZJksUKm+e3ai7
	aj5jgcyTN4hduECXsgvXZ9YI0WLBhQ0TF2w8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=kbn3xyjcbOp6hfpcmcNbbY3/3GSfUHODL7/m0ye7GPQ=;
	b=l3ntu8PdEq56mw5FJmfwRlQJVpkiHEKszIUY+12Oge9icsgghgBDhcyTH6kERXlGt0
	aMtMjF7jdl94onSWLlgg15TfZvk7vLh69aMl18YaT7ZTOKstc6KeGhUuDGuOWrCn5x57
	7aiJQ605vMp5+uWH1VuK/13ZRH49AbuBH3FbPftPd5pJ778f4lth6H8xRk07pC92vqr4
	/rgL41fjpwa/rWYw7oiyMjQQcJgdg5X1fD4/APwkzUcDxQtHHwOmrF6YgmJyqLnGzng0
	Wslg+jiyRgLYSvTIB7qwEjmP9JHWGPohJAJoCCw9wjjz+eLc9qbauAj5J/eKYuk3btPN
	28bA==
X-Gm-Message-State: ALoCoQnxZV/j8zzaVDVamqXEjApNfcuiP+0mhKHl5IRDDzO6Lj2y9PcoLrPEVtH58oxYKheCvKQs
X-Received: by 10.180.39.33 with SMTP id m1mr7549916wik.82.1406903406618;
	Fri, 01 Aug 2014 07:30:06 -0700 (PDT)
Received: from [10.19.3.25] ([46.18.96.46])
	by mx.google.com with ESMTPSA id i8sm9262746wib.6.2014.08.01.07.30.05
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 01 Aug 2014 07:30:06 -0700 (PDT)
Message-ID: <53DBA665.7080002@open.eurogiciel.org>
Date: Fri, 01 Aug 2014 16:38:29 +0200
From: =?ISO-8859-1?Q?K=E9vin_THIERRY?=
 <kevin.thierry@open.eurogiciel.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, 
	ronan <ronan.lemartret@open.eurogiciel.org>
References: <53DA58C9.50705@open.eurogiciel.org>
	<53DB6430.8090608@dynamicdevices.co.uk>
	<53DB660B.6040700@open.eurogiciel.org>
	<53DB66D8.3060500@dynamicdevices.co.uk>
	<53DBA085.7010705@dynamicdevices.co.uk>
In-Reply-To: <53DBA085.7010705@dynamicdevices.co.uk>
Cc: yocto@yoctoproject.org, general@lists.tizen.org
Subject: Re: [Tizen General] Build Tizen with yocto work-flow
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
X-List-Received-Date: Fri, 01 Aug 2014 14:30:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Alex,

Can you check if the filesfind-supplements and find-supplements.ksyms 
exist by trying this please:

bitbake rpm-native -c devshell
ls -l scripts/find-supplements{,.ksyms}

And tell us the output.

Thanks,
Kevin

On 01/08/2014 16:13, Alex J Lennon wrote:
> Getting some errors here having followed the "Using Scripts" section.
>
> I am guessing it might be as I'm using Ubuntu 14.04 LTS x64
>
> This is for MACHINE=genericx86
>
> e.g.
>
> | make[3]: Leaving directory
> '/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git/plugins'
> | make[2]: Leaving directory
> '/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git/plugins'
> | make[1]: Leaving directory
> '/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git'
> | install: cannot stat 'scripts/find-supplements{,.ksyms}': No such file
> or directory
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_install (log file is located at
> /home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/temp/log.do_install.2441)
> ERROR: Task 99
> (virtual:native:/home/ajlennon/yocto/meta-tizen/recipes-tizen/rpm/rpm_git.bb,
> do_install) failed with exit code '1'
>
> Layers
> =====
>
> Build Configuration:
> BB_VERSION        = "1.23.1"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "i586-poky-linux"
> MACHINE           = "genericx86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.6+snapshot-20140801"
> TUNE_FEATURES     = "m32 core2"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-yocto-bsp    = "tizen:faa50171a19a59600f6ac4ec124689bdc0cc1c48"
> meta-systemd
> meta-ruby
> meta-multimedia
> meta-oe           = "master:321c808a57e657c857dfe412d3c09839ebac27f1"
> meta-tizen        = "master:0f5ac68414f7c5702cec0fbc2d54cd01c104b4df"
>
> Cheers,
>
> Alex
>
> _______________________________________________
> General mailing list
> General@lists.tizen.org
> https://lists.tizen.org/listinfo/general



Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19A11E00A5B; Fri, 24 Jul 2015 17:17:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDB21E00A3C
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 17:16:58 -0700 (PDT)
Received: by pdbbh15 with SMTP id bh15so20588448pdb.1
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 17:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=qZBNTe5xy3aj5vAyyaWyGW21sPLb5/LPU7X3y6enOtc=;
	b=PHd7cv4ueEzHEbw5bX/tYBjTGaB2lNjCsmO254K3LF2jVzRYRG1fcyL8etIpUsQPEX
	awBUDn0IWzxabmL53Z9HCIqAU+RGKhEvhggOGggN++ZVkHJXHWU+0P8HEMQlCa5+XVVL
	RxpyAiScL/X4+k1ML3cnx2uO01qC5J2F5cV0AAH1SqH+U9KEgiw6x+8X+Eyh1xWKRVKm
	fL06Jijvroc0/3LOIvZSZJBg/zhA/LTgQV/Opu11wiAHYbiv7jHs/6zOKHhG2xEr4yIW
	Xal7u3+FNC+tOoqUAtXqoZav9hK0UqdscPNJ4cKXc0nDFjCd1AUzlTG6yUQcwvmAkSd+
	h02g==
X-Received: by 10.70.118.5 with SMTP id ki5mr37374646pdb.6.1437783418071;
	Fri, 24 Jul 2015 17:16:58 -0700 (PDT)
Received: from haswell ([2601:646:8601:4580:baca:3aff:fe80:aa8f])
	by smtp.gmail.com with ESMTPSA id
	bx7sm16572577pdb.82.2015.07.24.17.16.57
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Jul 2015 17:16:57 -0700 (PDT)
Date: Fri, 24 Jul 2015 17:24:29 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Lorin Vandegrift <vandegriftlorin@gmail.com>
Message-ID: <20150725002429.GB14383@haswell>
References: <CAOzegEN3YB0HvA+sHopRJexapWWkU03MMPFEdk=acOaTBGTc-Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOzegEN3YB0HvA+sHopRJexapWWkU03MMPFEdk=acOaTBGTc-Q@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Problem add and removing files to filesystem
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
X-List-Received-Date: Sat, 25 Jul 2015 00:17:04 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 15-07-24 14:27:09, Lorin Vandegrift wrote:
> Hi all,
> 
> We are having problems adding extra files/removing files from the generated
> file system in Yocto.  We've had success with using a do_install command in
> our own bb file and using commands in the format rsync -avz test.txt
> ${D}{sysconfdir}, however we can't write to some paths (i.e. writing to
> root with ${D).  Additionally, we are not able to overwrite files generated
> by other recipes.  We also tried using install and couldn't push our init
> script (nstall -m 0755 test.sh ${D}${sysconfdir}/init.d).  Any advice for
> these?  Also is there a recommended way for removing files?   We were able
> to remove them by using the rm command and adding it to
> ROOTFS_POSTPROCESS_COMMAND.

You can consider few approaches

1. Move the files into packages of there own in the recipe which means

PACKAGES += "foo"
FILES_foo = "files you want to separate out"

2. Write a bbappend in your own layer if you are doing something thats
not generic and wont benefit community, in this bbappend you can write
do_install_append () function and do the removal and any other packaging
related adjustments needed for that recipe

3. Write your own rootfs post processing function and hook it up into
ROOTFS_POSTPROCESS_COMMAND variable, this will however mean that online
package upgrades wont work out of box.

If you are looking for overwriting files then consider them patching
using patches or overlaying files using SRC_URI itself again using a
bbappend, if its a config file and you have few tweaks you can sed/awk
then in do_install step itself.

what you are trying is violating the packaging concerns of buildsystem
and thats why its not working as you expected.

Consider components and files a component provides as basic unit of
operation, all changes has to be done at that level for best results.

-Khem



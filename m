Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AAFCE00CC6; Thu, 12 Oct 2017 02:11:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mailrelay2-2.pub.mailoutpod1-cph3.one.com
	(mailrelay2-2.pub.mailoutpod1-cph3.one.com [46.30.212.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 041F1E00CB6
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 02:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=GNsUN8ldO+UTngxbpHNSenmUOd6WfbksXAMWbKSeWeQ=;
	b=MEYplPL/Pfxd2ovIv1IQvS6xaB4ePtST4lpo8Il/hOwQwJoOvAaMl9s870VXS3detZbM2JtP9oaTR
	YDqVy3f25v5BG1T0Kxv7HpTvXKckO4H5SgXu7CHM1IL2UaqGhu7mP/wSSn8K7UuuxMr3MNQOZTUerL
	lDANYkZSwT4ZfHlg=
X-HalOne-Cookie: 30ea5664b59dba39fb8a758be3e0f9971f067b44
X-HalOne-ID: 491afe92-af2d-11e7-a87d-b82a72d03b9b
Received: from [192.168.178.20] (unknown [89.12.11.151])
	by smtpfilter2.public.one.com (Halon) with ESMTPSA
	id 491afe92-af2d-11e7-a87d-b82a72d03b9b;
	Thu, 12 Oct 2017 09:11:09 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAOT_U5aVPzup94ETTujxMD4NZ-tgHHXijUs9vB_jY0geA4F0OA@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <f0b38f7a-2c6b-42ec-a0cf-555086acc952@embexus.com>
Date: Thu, 12 Oct 2017 11:11:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAOT_U5aVPzup94ETTujxMD4NZ-tgHHXijUs9vB_jY0geA4F0OA@mail.gmail.com>
Subject: Re: Layer versions at runtime
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
X-List-Received-Date: Thu, 12 Oct 2017 09:11:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi,

That's easy to do :


do_install_append () {

     for layer in ${BBLAYERS}; do
         cd $layer
         echo -n "$(basename $layer) = "  >> ${D}${sysconfdir}/gitinfo
         git rev-parse HEAD >> ${D}${sysconfdir}/gitinfo
     done
}


add it in a recipe or add it to os-release.bbappend


On 12.10.2017 11:05, Alan Martinovic wrote:
> I've noticed that bitbake prints the git commit versions of the layers 
> when the build starts.
>
> meta-python       = "HEAD:b40116cf457b88a2db14b86fda9627fb34d56ae6"
> meta-mender-core  = "HEAD:c3b1b465ce3a27fc7b03a6b7ef596348835cff57"
> meta-go           = "HEAD:514b2a80a2a4235687e92fb28328bb3e7c2d6c74"
>
> Does this information find it's way into the rootfs?
> If not, any suggestions on how to achieve this?
>
> The goal is to have this info available while the image is running.
>
> Be Well,
> Alan
>
>

-- 
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Tel.     : +4971415074546
Mobile   : +4917662901545
Email    : ayoub.zaki@embexus.com
Homepage : https://embexus.com



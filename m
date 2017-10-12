Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5468FE00CFE; Thu, 12 Oct 2017 07:19:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84FE9E00CFE
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 07:19:40 -0700 (PDT)
Received: (qmail 14920 invoked by uid 1003); 12 Oct 2017 14:19:39 -0000
Received: from unknown (HELO ?192.168.11.142?)
	(philip@opensdr.com@108.44.111.57)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	12 Oct 2017 14:19:38 -0000
To: Ayoub Zaki <ayoub.zaki@embexus.com>, yocto@yoctoproject.org
References: <CAOT_U5aVPzup94ETTujxMD4NZ-tgHHXijUs9vB_jY0geA4F0OA@mail.gmail.com>
	<f0b38f7a-2c6b-42ec-a0cf-555086acc952@embexus.com>
From: Philip Balister <philip@balister.org>
Message-ID: <c2a53401-c3cd-d935-e87b-46cdba9f5f59@balister.org>
Date: Thu, 12 Oct 2017 10:19:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <f0b38f7a-2c6b-42ec-a0cf-555086acc952@embexus.com>
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
X-List-Received-Date: Thu, 12 Oct 2017 14:19:43 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 8bit

Or better yet use
http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#ref-classes-image-buildinfo

to get:

-----------------------
Build Configuration:  |
-----------------------
DISTRO = nodistro
DISTRO_VERSION = nodistro.0
-----------------------
Layer Revisions:      |
-----------------------
meta              = master:8ca61a5464743ff85b6d26886112750d6ddd13e0
meta-xilinx       = master:74a0d90e52cca346d05a69bbd628c6ec9e49fbcb
meta-oe           = master:5c9a4a08844c215ebd6f2146f50de753b8e7ecef
meta-networking   = master:5c9a4a08844c215ebd6f2146f50de753b8e7ecef
meta-filesystems  = master:5c9a4a08844c215ebd6f2146f50de753b8e7ecef
meta-python       = master:5c9a4a08844c215ebd6f2146f50de753b8e7ecef
meta-multimedia   = master:5c9a4a08844c215ebd6f2146f50de753b8e7ecef
meta-sdr          = qt5-test:dacc304b01eac7448ec1ebf0b3d0eab761c41a26 --
modified
meta-qt5          = master:2c3ef00f53683fbdce5b390950b49b67da85d3a1
meta-qcom         = master:bae28268a9387bb842ab7bbe8200b98c1210604c
meta-raspberrypi  = master:9d84186870a6f9bde44575690105b9bb5e44ca24

Philip

On 10/12/2017 05:11 AM, Ayoub Zaki wrote:
> Hi,
> 
> That's easy to do :
> 
> 
> do_install_append () {
> 
>     for layer in ${BBLAYERS}; do
>         cd $layer
>         echo -n "$(basename $layer) = "  >> ${D}${sysconfdir}/gitinfo
>         git rev-parse HEAD >> ${D}${sysconfdir}/gitinfo
>     done
> }
> 
> 
> add it in a recipe or add it to os-release.bbappend
> 
> 
> On 12.10.2017 11:05, Alan Martinovic wrote:
>> I've noticed that bitbake prints the git commit versions of the layers
>> when the build starts.
>>
>> meta-python       = "HEAD:b40116cf457b88a2db14b86fda9627fb34d56ae6"
>> meta-mender-core  = "HEAD:c3b1b465ce3a27fc7b03a6b7ef596348835cff57"
>> meta-go           = "HEAD:514b2a80a2a4235687e92fb28328bb3e7c2d6c74"
>>
>> Does this information find it's way into the rootfs?
>> If not, any suggestions on how to achieve this?
>>
>> The goal is to have this info available while the image is running.
>>
>> Be Well,
>> Alan
>>
>>
> 


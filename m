Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA942E00978; Mon, 15 Jun 2015 06:58:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [193.201.172.119 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (picmaster[at]mail.bg)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx3.mail.bg (mx3.mail.bg [193.201.172.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52855E00960
	for <yocto@yoctoproject.org>; Mon, 15 Jun 2015 06:58:56 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx3.mail.bg (Postfix) with ESMTPSA id 57EDB202C6BE;
	Mon, 15 Jun 2015 16:58:55 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1434376735; bh=fWxVv0zpTUvIIhnStDf/lRidn+b96/WN5wDVawllXHY=;
	h=Message-ID:Date:From:MIME-Version:To:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=dzzd9aJOYhq7iPir8iDMHAeaJFVked/kqzHWlq+lBilX56oNd2jLW46cP18C4Q+ex
	qe+RA9xYHt9nWFNtURCZWzOhkn6URULvqEG7qHp0sCMbXsdPOPvVS8dd1o9JAPmR5q
	3+U93Wqd1VSFWWPe8ApIbwBc02OLT6mcA78yFw4s=
Message-ID: <557EDA1F.7010207@mail.bg>
Date: Mon, 15 Jun 2015 16:58:55 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>, 
 Yocto Project <yocto@yoctoproject.org>
References: <557ED498.50406@mlbassoc.com>
In-Reply-To: <557ED498.50406@mlbassoc.com>
Subject: Re: sstate black hole?
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
X-List-Received-Date: Mon, 15 Jun 2015 13:59:00 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Gary,

On 06/15/2015 04:35 PM, Gary Thomas wrote:
> I'm working with i.MX6 targets (meta-fsl-arm*).  For these
> targets, some packages are "special" in that they use i.MX6
> specific graphics support.  This ends up with an additional
> layer of stratification, so my tmp/work tree has:
>    all-amltd-linux
>    cortexa9hf-vfp-neon-amltd-linux-gnueabi
>    cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi
>    teton_p0382-amltd-linux-gnueabi
>    x86_64-amltd-linux-gnueabi
>    x86_64-linux
>
> The packages that are built in tmp/work/cortex* are architecture
> specific, not target specific, hence my question:
>
>    If I build for two i.MX6 targets, identical in every way
>    except for the ${MACHINE} name, if I use sstate to share
>    the builds from target A when building for target B, why
>    are the packages built in cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi
>    not shared by sstate?  I can see that they are present in
>    the sstate cache, but they are always rebuilt for target B.
>    I consider this incorrect behaviour as these are the same
>    architecture and so they should be sharable via sstate.
>
> Am I missing something here?  How can I determine why the
> package from target A (sstate cache) is not usable by target B?

Are these packages (the ones that are getting rebuilt) depending on
machine-specific headers (kernel)?

Regards,
Nikolay


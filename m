Return-Path: <Qi.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33DF6E014AF
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2013 19:10:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2S2A6kD024262
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2013 19:10:06 -0700 (PDT)
Received: from [128.224.163.154] (128.224.163.154) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Wed, 27 Mar 2013 19:10:05 -0700
Message-ID: <5153A67F.9070702@windriver.com>
Date: Thu, 28 Mar 2013 10:10:07 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD><20130307104051.GH32228@jama.dyndns-home.com><96E98E10F7094D32B371FD84AFF0FFFC@PAULD><20130307182933.GS32228@jama.dyndns-home.com><50BB56BA2C44400C9B6A31B0C2641BD2@PAULD><20130307224223.GU32228@jama.dyndns-home.com><D5340F46DF5F458D9096EA823C3A9EAE@PAULD>
	<20130327090320.GA13837@ad.chargestorm.se>
	<2AE00AC2A89C48A38A01262D58FA692A@PAULD>
In-Reply-To: <2AE00AC2A89C48A38A01262D58FA692A@PAULD>
X-Originating-IP: [128.224.163.154]
Subject: Re: Samba server?
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
X-List-Received-Date: Thu, 28 Mar 2013 02:10:07 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 03/28/2013 06:12 AM, Paul D. DeRocco wrote:
>> From: Anders Darander
>>
>> Maybe a dumb question...
>>
>> Have you added samba to the image that you're building?
>> Just adding a layer won't cause the added recipes to be built and
>> deployed.
> It's not a dumb question. No, I haven't added samba to the image that I'm
> building. I've read the Yocto Project Reference Manual (except certain
> sections that are obviously irrelevant to a user), and the wretched Bitbake
> manual, and I don't see any mention of doing anything other than adding
> layers to bblayers.conf and tweaking local.conf.
>
> I'm under the impression that, unless one is making metadata changes that
> will ultimately be contributed back to the community, one treats the
> poky-danny-8.0 tree as essentially readonly, and limits ones adjustments to
> perhaps adding more metadata (as I've done by downloading
> meta-openembedded), and editing bblayers.conf (as I've done by adding the
> meta-openembedded/meta-oe layer) and a few settings in local.conf.
>
> I don't see anything in those files that causes anything to be "added to the
> image" other than the mentioning of various layers in bblayers.conf. Yet it
> still manages to build a substantial system containing lots of stuff from
> poky-danny-8.0, but only a few things from meta-openembedded/meta-oe, and
> that doesn't include samba.
>
> So where in the documentation does it explain this? If, as I suspect, the
> answer is "nowhere", then somebody's going to have to hold my hand and tell
> me how to "add samba to the image that I'm building", because I have no idea
> how to do that.
>
> Pardon my exasperation. I really do appreciate the help people have given me
> here. I just wish it was possible to deduce this stuff by reading a decent
> manual.
>
> And if anyone who is part of the Yocto development team is looking for bugs
> to fix, they should consider regarding the state of the documentation as a
> great big fat "bug", and maybe devote 10% of the time to fixing that.
>
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html
section 5.2 Customizing Images

In your case, you could add the following line to local.conf.
IMAGE_INSTALL_append += "samba"

And you can use 'bitbake -g <image_recipe_name>' to see whether samba is 
pulled in.

For all docs, see https://www.yoctoproject.org/documentation/current.

Best Regards,
Chen Qi


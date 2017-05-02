Return-Path: <jason.wu.misc@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B65DE003C1; Tue,  2 May 2017 02:16:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jason.wu.misc[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC91EE003C1;
	Tue,  2 May 2017 02:16:27 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id t7so20687114pgt.1;
	Tue, 02 May 2017 02:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=RhwOabxAUVhYM9BNYXse5wBCQLl3IUgT82vc0rePFT0=;
	b=Xc9j7uW09M0y23rup3nqoWVvT+XnyoePt9+gQfHMUMMV0CfbeKLLCj8F5zrtdsL0i5
	kT4T9DfUwtBrlN07DNA5b3tHmdDo0T35RbN6SoQDy7Lmua/jSONuBgZtyB21UBSht+Wf
	PEdHDp6FSEXMsUG6pchFLiXYVwYzrjL5GTFMZJzfX5RBViCY0wGxisUi9b/LimsMvs2n
	Inbg4F0cMmgqLUOW0SuNIQNeSwxm4gtWo0flcrkh3/JuiDNBa0Jwzlmf1/KN/sCJy/LX
	0naqhAo0UUiLgQ8GvhBDH1RN/K7I0cEA+w87+nWbd4Go1XqHoXEF4//4mmuTsmK+3QPI
	e46Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=RhwOabxAUVhYM9BNYXse5wBCQLl3IUgT82vc0rePFT0=;
	b=NWs7l0xZDuvhNKyGijyp6zBcPK7RUH7NBVX2U291ZGAGh8sozGDk/RvUL4hej1lfu4
	oDyHP3J1t+e5saQznUsh9/2NWnk8SjsNhCIAsvztkMOrHMXqTK22hO6JqLV9MsCbuVie
	ifjWM/UKdumbxgP42X7ftP0oIuzXssMMJB1qWMEg13CAZtWtttXagz2L27/2P45NoPZ8
	dlN7p84A+NsAaoOBnnRPZEFR1Ev+3T5kc3Q54k9i1yD0djnVDM8uOqLy3FuxH0J7sKEy
	An3dz9XPsMJXsZjzHrBQtrfA+b1pA/w4zO4MYz5eaxs6+IJgbYs/KdljlGq4t8CWNHs8
	08fQ==
X-Gm-Message-State: AN3rC/70hjOqjbfC/SwP/ASJ/SAxzStv2b8VMOyCtbI1MoXdCzKWcx1v
	Q3QtZg3B8TVtGw==
X-Received: by 10.99.136.65 with SMTP id l62mr4925711pgd.151.1493716586912;
	Tue, 02 May 2017 02:16:26 -0700 (PDT)
Received: from [192.168.1.129] (CPE-60-226-68-23.qld.bigpond.net.au.
	[60.226.68.23]) by smtp.gmail.com with ESMTPSA id
	o5sm34145073pga.64.2017.05.02.02.16.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 02 May 2017 02:16:26 -0700 (PDT)
To: Pello Heriz <pello.heriz@alumni.mondragon.edu>,
	meta-xilinx@yoctoproject.org, meta-xilinx-request@yoctoproject.org,
	meta-virtualization@yoctoproject.org, yocto@yoctoproject.org
References: <CAFL6qn5czUYrKRLPxhZbj7EEAgMu_dFr89WNsDBaYxVWKppM_w@mail.gmail.com>
From: Jason Wu <jason.wu.misc@gmail.com>
Message-ID: <b383700f-54c5-7ff1-92a7-89916c413f1a@gmail.com>
Date: Tue, 2 May 2017 19:16:21 +1000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <CAFL6qn5czUYrKRLPxhZbj7EEAgMu_dFr89WNsDBaYxVWKppM_w@mail.gmail.com>
X-Mailman-Approved-At: Wed, 03 May 2017 16:36:51 -0700
Subject: Re: [meta-xilinx] xen-image-minimal testing
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
X-List-Received-Date: Tue, 02 May 2017 09:16:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 2/05/2017 4:33 PM, Pello Heriz wrote:
> Hi all,
> 
> I have built an image using "xen-image-minimal" command with Yocto and I
> would want to know how can I test if xen functionalities are correct or
> not with Zynq MPSoC QEMU. How can I do this?
http://www.wiki.xilinx.com/Building+the+Xen+Hypervisor+with+PetaLinux+2016.4+and+newer

have look at the "TFTP Booting Xen and Dom0 2016.4" section and hope
that helps.

> 
> Anyway, I have seen that sometimes in the QEMU terminal appears the next
> message when the mentioned image is launched by "runqemu zcu102".
> 
> INIT: Id "X0" respawning too fast: disabled for 5 minutes
> 
> What's the meaning of the message? Is it critical?
It is not critical if you don't need it. The reason you are getting this
error message is because the your inittab trying spawn a console when
the device node (e.g. hvc0) for Id "X0" does not exists.

Jason
> 
> Any answer will be welcome,
> 
> Best regards,
> Pello
> 
> 
> 


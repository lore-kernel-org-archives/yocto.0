Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7982AE00559
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 10:12:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p9VHC94V012217
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 10:12:09 -0700 (PDT)
Received: from Macintosh-5.local (172.25.34.21) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 31 Oct 2011 10:12:09 -0700
Message-ID: <4EAED6E8.3080800@windriver.com>
Date: Mon, 31 Oct 2011 12:12:08 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CALs2vtdUjnMxtTfhqPB2Teui4ZKmzzxRWfBxgU=qG9giUFAwrg@mail.gmail.com>
In-Reply-To: <CALs2vtdUjnMxtTfhqPB2Teui4ZKmzzxRWfBxgU=qG9giUFAwrg@mail.gmail.com>
Subject: Re: root paths in packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 31 Oct 2011 17:12:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 10/31/11 5:57 AM, Mike Tsukerman wrote:
> Hello,
> 
> I've build rpm packages and met some interesting things. 
> In the rpm all scripts and files include root paths from machine that i've build on.
> how can i change that?

Examples of the problem are definitely needed.  There are some cases where
embedded paths simply refer to the place on the disk a source file or similar
came from during the build.  Depending on where these references are, they may
be considered safe and acceptable.  However, in most places something like this
would be considered an error.

--Mark

> -- 
> Best regards, Mike Tsukerman
> 
> jabber: miketsukerman@gmail.com <mailto:miketsukerman@gmail.com>
> jabber: warzon@jabnet.org <mailto:warzon@jabnet.org>
> skype: w_a_r_z_o_n
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



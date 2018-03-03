Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51B05E00E01; Fri,  2 Mar 2018 18:30:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09B75E00DE3
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2018 18:30:53 -0800 (PST)
Received: by mail-pf0-f172.google.com with SMTP id q13so4774835pff.0
	for <yocto@yoctoproject.org>; Fri, 02 Mar 2018 18:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=AqT5BJh0FDd6lmfoTi8x90nsh4ZbGSriffYMaEcFDi4=;
	b=vM/hQjA/+UvcAbiLa88u8uxcFWElV2fzUTeJpg6nOYuezimvW7U81eM9EBwEAKkBXI
	uhr5mXLAlEgyT1x2yt6nF7ggpebalo7ddJL3rnqwziYDXF/HT5HJq1Sb4dboRY0xV8zD
	FKJC5KcXw8qa1tN3lxplsLGE5+y0cBbTEIVCq4cthkdN7w5KhtL/G8IvGYmQQ/P0Jwud
	tk/Lt/iZ+ojGIUyFKIqZpoNeIGTv2psLlM8jw1Zg5Koz80bz4m8gCnmpMAstjAqQYBGp
	57qZwWpa0KdadKXIa77Hit0dcV//03mlXRv3OF4Tc8t1ZtIsSrYJwhIPL49fWLRs+sln
	r10w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=AqT5BJh0FDd6lmfoTi8x90nsh4ZbGSriffYMaEcFDi4=;
	b=H1Zo+9XRbQw+j8PlMqKODnxwW5suB7c/caI5vcpwL/4gLPpRrMXELPlpJMFp3KYy1K
	c6JvnuJJ15Rhr3dpZEtZP6nt++k+WPZAgE+9Sx4M4QDdJe8FilsR1iIZWbirS83knQha
	LMtG6qBV69RyCWS2AdHTmIG9rJ4458DPFQ8vj6K/QdJjF6yF/rHNpLSVBdCfwfrXBEjt
	Fk+Y1N7SozXrS1I6U1Xnaq3ZEi0+cx9BHRhJDT5hgRGAPlUOMulQWCIA6+h7fJaS61+Q
	GB2RFRMx9K6g38ExC6/BWMaJzKyolMiGJkft17TwUqOeJouRBMW7W+S8J8PV9Fxh/7XD
	+iGg==
X-Gm-Message-State: APf1xPCzJO76Wp2eXc3X2p50l5c1u7qGmJNj2Rt4OBQnznuqSISc3Fkr
	67vArA/d+RBwdOvxm5N0jxsrXQ4M
X-Google-Smtp-Source: AG47ELuUN3eYppNkx4QaT6fpB36rQqWLs8brI0n3hqPzsJ5TlYyEQ6DoJSge99PirDnc09Akr2Edxg==
X-Received: by 10.99.126.12 with SMTP id z12mr6160830pgc.142.1520044252943;
	Fri, 02 Mar 2018 18:30:52 -0800 (PST)
Received: from ?IPv6:2601:646:8880:466c:a564:75fb:6e2a:d708?
	([2601:646:8880:466c:a564:75fb:6e2a:d708])
	by smtp.gmail.com with ESMTPSA id
	u18sm13839586pfm.48.2018.03.02.18.30.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 02 Mar 2018 18:30:52 -0800 (PST)
To: Parthiban Nallathambi <pn@denx.de>, bitbake-devel@lists.openembedded.org, 
	yocto@yoctoproject.org
References: <69aee4a6-ed3b-bbb3-7896-818a8904a98e@denx.de>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <0821fd17-6673-787f-ee85-34aac1b0919c@gmail.com>
Date: Fri, 2 Mar 2018 18:30:51 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <69aee4a6-ed3b-bbb3-7896-818a8904a98e@denx.de>
Subject: Re: [bitbake-devel] Add custom user to custom group in bitbake recipe
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
X-List-Received-Date: Sat, 03 Mar 2018 02:30:57 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/2/18 3:36 AM, Parthiban Nallathambi wrote:
> Hello All,
> 
> I have created a custom group e.g "grp1" in my application recipe say
> "app.bb".
> 
> GROUPADD_PARAM_${PN} = "grp1"
> 
> I am trying to add my custom user e.g: "user1" to this group "grp1" in
> "space.bb".
> 
> USERADD_PARAM_${PN} = "-d ${localstatedir}/lib/space/ -s /bin/false -G
> grp1 -U user1"
> 
> The useradd command failed: "useradd: group 'grp1' does not exist". I
> have also tried adding DEPENDS_${PN} = "app" in space.bb, but it doesn't
> help.

ensure that the package adding group is also part of final image. For
that you might use something like

RDEPENDS_${PN} += "app"

in the recipe which is adding the user

> 
> How can I add my custom user to my custom group in bitbake recipe?
> 
> Question in Stackoverflow:
> https://stackoverflow.com/questions/49068076/yocto-add-custom-user-to-custom-group
> 
> 



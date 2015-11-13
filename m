Return-Path: <sledz@dresearch-fe.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5C72E00C80; Fri, 13 Nov 2015 02:19:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CD0FE00AE9
	for <yocto@yoctoproject.org>; Fri, 13 Nov 2015 02:19:56 -0800 (PST)
Received: by wmvv187 with SMTP id v187so74049017wmv.1
	for <yocto@yoctoproject.org>; Fri, 13 Nov 2015 02:19:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dresearch-fe_de.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=FDXgdyXoMKIWUO3iuqLp8uks3ky7TIdQK8u9iWXM1Is=;
	b=MOAOeCxjkCPYQgEVJQW7t4vZ8GWJ6/AsnrJOZQkjjxB8LwfOOzg3VfPjOqFTmOoydm
	FwkOreBMBsE1Tx82H78awMM3rUWuROwiQ3/FzzYpTqTOi08J0sM1oll+ChmezdKxsHKV
	o4M5lO9MFLu0zbQqp58NM68+gnABPhsHNHn+wzK3RkNySoxmn/rpkfKMYTC5KZPOiPxe
	hoKx7efAaX0L5Bl8/5FKnUgIKm4foBPAS5laJzYQyz4pzoeidLpCXTftw+T9JRH9hs3h
	BHvTRjtDda3RWY1fz78q4IclhcjD2kL91EkCohkBXoj5KaEw10I6AtzlzXNCzI03Gvcz
	bccQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=FDXgdyXoMKIWUO3iuqLp8uks3ky7TIdQK8u9iWXM1Is=;
	b=GlhDmhIvQJOnsxOfHCyDqxvDVke1S2CADdiFbCacZ2rZQ/EJtanxEPXxOs0MKrTW8D
	Ok3lzPOQTsRO/4MmriavttzYvzwyToGQOeq3Rqq/ywJaqHl+YHONwrcxzJcD19Hzn1ol
	MAEZQo6P0568gqQN9ZbdChqd5ueOlPpnpvMZBKDzwWa7bo1ab30QjhMWch4qZGuDjokl
	4U9QvD+M1e8xxO3mtf/8EBF2bLb2Aw/6zbT6+ovzCdEgQ6iEOLGLKvuT6mk+hUi0QEMm
	VmwxwjDnO+otDpxJptvN8g/STVnnbRq+Dlyh2FOnpK5vBq1ecrs31NPJp9in5sO06rZq
	qvMQ==
X-Gm-Message-State: ALoCoQl2FpmIsKZA2z9tyxE1czfw8XWWhS2O7Sn3t9LVtgTHxtoruiN0I1X/4FeLFC2BwMe8oL4a
X-Received: by 10.28.24.144 with SMTP id 138mr2649030wmy.43.1447409995547;
	Fri, 13 Nov 2015 02:19:55 -0800 (PST)
Received: from [172.29.23.46] (zk223.dresearch-fe.de. [217.92.177.116])
	by smtp.googlemail.com with ESMTPSA id
	l1sm3225880wmg.21.2015.11.13.02.19.53
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Nov 2015 02:19:54 -0800 (PST)
To: openembedded-devel@lists.openembedded.org,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Cliff Brake <cliff.brake@gmail.com>
References: <CAOd_LFwgMqDUBKzxjs50G+=F0TgFg8ZuoCBX6jqs6p8fLFQibg@mail.gmail.com>
From: Steffen Sledz <sledz@dresearch-fe.de>
X-Enigmail-Draft-Status: N1110
Message-ID: <5645B949.6030900@dresearch-fe.de>
Date: Fri, 13 Nov 2015 11:19:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAOd_LFwgMqDUBKzxjs50G+=F0TgFg8ZuoCBX6jqs6p8fLFQibg@mail.gmail.com>
X-Mailman-Approved-At: Fri, 13 Nov 2015 08:25:40 -0800
Subject: Re: [oe] OE/Yocto developer survey
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
X-List-Received-Date: Fri, 13 Nov 2015 10:19:58 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 26.10.2015 20:18, Cliff Brake wrote:
> Hi,
> 
> I'd like to get some feedback on the following questions -- feel free
> to respond to list, or directly to me, and I'll withhold your
> name/company from any results.
> 
> I would like to collect feedback until 2015-11-02, and will summarize
> the results after that.
> 
> My goal with this survey is to get a sense for best practices and what
> is most commonly used among Yocto/OE developers so I can better advise
> clients using Yocto/OE.  Hopefully this will also generate some
> interesting discussions.
> 
> How long have you been using OE?  _2008_
> 
> How do you use OE/Yocto?
> [ X ] product development
> [  ] hobby/research/education/yocto core developer, etc
> 
> What distro do you use?
> [  ] Poky
> [ X ] Angstrom
> [ X ] nodistro or custom
> 
> How do you organize multiple git repos?
> [ X ] Git submodules
> [  ] Repo
> [  ] Other
> 
> What packaging system?
> [ X ] OPKG
> [  ] RPM
> [  ] Other
> 
> What GUI toolkits?
> [ X ] Qt
> [  ] Gtk
> [  ] EFL
> [  ] HTML5/JS
> [  ] Other
> 
> What init system?
> [ X ] systemd
> [  ] sysvinit
> [  ] busybox init
> [  ] Other
> 
> What libc?
> [ X ] glibc
> [  ] uclibc
> [  ] musl
> [  ] Other
> 
> How do you develop custom applications?
> [  ] application-SDK
> [ X ] devshell
> [  ] develop on PC, test on target
> [ X ] Other
> 
> What language do you primarily use for custom applications?
> [ X ] C
> [  ] C++
> [  ] Python
> [  ] Javascript
> [  ] Lua
> [  ] Other
> 
> What do you use for Continuous Integration?
> [  ] Buildbot
> [ X ] Jenkins
> [  ] Other
> 
> Do you use any any of the tooling projects
> (https://www.yoctoproject.org/tools-resources/projects) such as ADT,
> Hob, Toaster, etc?
> 
> _no_
> 
> Reasons or explanations are appreciated, and please feel free to
> include additional choices/information you think are relevant.

-- 
DResearch Fahrzeugelektronik GmbH
Otto-Schmirgal-Str. 3, 10319 Berlin, Germany
Tel: +49 30 515932-237 mailto:sledz@dresearch-fe.de
Fax: +49 30 515932-299
Geschäftsführer: Dr. Michael Weber, Werner Mögle;
Amtsgericht Berlin Charlottenburg; HRB 130120 B;
Ust.-IDNr. DE273952058


Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B0CDE00E42; Sat, 27 Jan 2018 13:44:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.48 listed in list.dnswl.org]
Received: from mail-pl0-f48.google.com (mail-pl0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8201DE005A2
	for <yocto@yoctoproject.org>; Sat, 27 Jan 2018 13:44:26 -0800 (PST)
Received: by mail-pl0-f48.google.com with SMTP id j19so1075041pll.2
	for <yocto@yoctoproject.org>; Sat, 27 Jan 2018 13:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:organization:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=KoxI15wzV5vvOz3OsxB88zxrxhWESy8UlQnyFMBxUTI=;
	b=bshYixr1Lb6V2EqSoWW7EKokQ+uDRynveAcHYFgY8FRryuMbuMqqQ4BkR0m1GGBl5j
	8aIRyms0wTe6OXJNhTZjtvyd+BLAP4aMtjLCwrkquMSLvvtALgdB7aCGeTwZVfkeQWbO
	nsaZRTIFZW5esJT3gp2mbXLxPl8bBberQkkPiMgvKIloHcg6UFiauT2Tvpfj/oax1FU9
	I3TScFdFWnvKihXmxe/qLvTIuOSV3xrgR5gX58DMlQCCESu9EmgSDJYN2d69UudWSGu1
	8uQTluDPIde5qIF4bsTETInoW2lRlNBroc0A4n2OYDMfR3mJW+BGSWOKVryXzGHAB715
	3pCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:organization:message-id:date
	:user-agent:mime-version:content-language:content-transfer-encoding;
	bh=KoxI15wzV5vvOz3OsxB88zxrxhWESy8UlQnyFMBxUTI=;
	b=EisCsTby86LfA+dAw1DCPIuMKo6HXjilgYhe6vST5fU48IgKGiEyRcGdA5xLZ3HGoL
	+aSpb96C+NKdw+9KgsamRJfY+4gM11FRxJt0ptrlFD04SBjGxV30xSFP8lSldA/SaSSs
	HmlYm2eS003vLfOC9P8T0W2uQiQv+0f615iXAmEOEn2SUwT8GWuN3cKPkMmHO8fMCeDK
	H8KkiDCSIJaWe8Bqt3H9znKMp9zqAVgfINzIH7oLO+EhWtRLhDrmyYoqevY3hnn5qtEk
	NKmiuBZ//yXiTpF9AmrJJGNTEWQielmX5W4clk2+y6+yPjfz9OIUKLuTDwUdM9Le+Yc0
	eyHA==
X-Gm-Message-State: AKwxytczyOyfse/Ac8VbU7/Sb2BsJkbfhyDNOliyzeF7bMhHVSZzWOsl
	UXNwpF3vGME9vjJIircUY3hHEhjK
X-Google-Smtp-Source: AH8x225Vk0hQbpThV9fhlI+YGKYCiI7LQqqSdiQsCwxtmEoXRz2ESUjJaGJzoUrr32qhOw1vj1qIjA==
X-Received: by 2002:a17:902:8498:: with SMTP id
	c24-v6mr17551519plo.450.1517089465474; 
	Sat, 27 Jan 2018 13:44:25 -0800 (PST)
Received: from hermes.local ([2601:646:8880:466c:8cc2:eed3:a043:ef2a])
	by smtp.gmail.com with ESMTPSA id d4sm6036716pgc.58.2018.01.27.13.44.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 27 Jan 2018 13:44:24 -0800 (PST)
To: OE-core <openembedded-core@lists.openembedded.org>,
	openembedded-devel <openembedded-devel@lists.openembedded.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <45db0f72-d93f-ebbd-83aa-80ceaeabc083@gmail.com>
Date: Sat, 27 Jan 2018 13:44:23 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
Subject: [RFT] Glibc 2.27
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
X-List-Received-Date: Sat, 27 Jan 2018 21:44:27 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi All

glibc 2.27 is releasing soon in few weeks. I have put together the 
recipes for upgrade, along with fixes for some of packages that I ran 
into here

http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/glibc-2.27

This has gotten limited testing. I plan to put the package fixes as we 
plough through. Please test this out in your setups and report problems 
or fixes ( preferred ) to get various packages working on 2.27 release

Thanks
-Khem


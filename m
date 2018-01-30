Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22C08E00DAE; Tue, 30 Jan 2018 12:42:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.41 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60DD9E0056D
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 12:42:24 -0800 (PST)
Received: by mail-pg0-f41.google.com with SMTP id m20so8190235pgc.11
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 12:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=wBW0jftKw8jcKgE8dTFG0Xg/p90SXXjXU64V+YMCazg=;
	b=HO0E3x3vjHg30cuW6MbXqkCf34VRVqCgjlSrRE+OyfHNmUOtQl4mUs/yQffGqBywEk
	2bS+ebgw8GMPCyvoLtZts0VZKTjmXehRfpPQhBt2qf7CTkgZ/9Zc0bz+bZLqo/WPoTXx
	AOaLgccoC5jAWpMlnkvo6DSNvRa+5TTJHuDMyR8kbsHB/dsXUs1BU773TxdDO8s4JQT7
	QtAk9Ni9AWiibM9rpfyq5RnBnD25678dUXg1p/MVoVd/NyGgYkxDBaVwFt+hbQyAFaEs
	3V3neTtHRRnTUbY9sVogy0lrNKTR+zRhA3ehzxkrFIHkWd+KZ0wepK7w/LROv6ce7n1k
	pOzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=wBW0jftKw8jcKgE8dTFG0Xg/p90SXXjXU64V+YMCazg=;
	b=Y3jtKEQWsUIn6W4uMCDvR3p5zMS+s9TX0jBwg/mnFQak/mxv5+asSdPYneCd2/k9lU
	ae+psVt/Po9pK+sv9Z8AWPIzaeYpG6J9rUFcnSb51uIz0uJVGjuowehm8db+iwuiPdiJ
	0KODZhiLFR199tYw6YXpdJbxLJZbx/wG1jsv/ICx0H4+nZWYHYvFe37GLOHMOIz1EkDo
	uYE3Eov2FhREudmCeEDWp6JV4j61F88wEGS+Pnb7K/jclI179rrU78V/b2EYwvAxSisw
	8EbtJ7lscmwYVba8fh+FQTYcMoOBRHC4rjoKAh52Qf5DrNpKpBorGqXxfnrApFsuMDyY
	QVHA==
X-Gm-Message-State: AKwxyteOZgthPrnqjhbIx//GPcO4yHghtOINxvCB4Myy4/13GD0LXNs5
	jLnuYS567m9xvDgqabP2B4t1ulrm
X-Google-Smtp-Source: AH8x226k9bmDQ5PW+Mu2WTv1ds5gSS+vEpBZY2Iy/Z5wDrVAK4I5pWSIvRGByl3I1SA2gCsywLzpDQ==
X-Received: by 2002:a17:902:e2:: with SMTP id
	a89-v6mr26017725pla.98.1517344944299; 
	Tue, 30 Jan 2018 12:42:24 -0800 (PST)
Received: from ?IPv6:2601:646:8880:466c:4c3e:ac59:6e73:b998?
	([2601:646:8880:466c:4c3e:ac59:6e73:b998])
	by smtp.gmail.com with ESMTPSA id
	f10sm23085816pgr.33.2018.01.30.12.42.23 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 30 Jan 2018 12:42:23 -0800 (PST)
To: yocto@yoctoproject.org
References: <1517137906546.31307@sonovts.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <503bba22-6035-68d8-9047-a50a5faa3d4a@gmail.com>
Date: Tue, 30 Jan 2018 12:42:22 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <1517137906546.31307@sonovts.com>
Subject: Re: Adding/Editing C++ source code and test for an application
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
X-List-Received-Date: Tue, 30 Jan 2018 20:42:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 1/28/18 3:11 AM, Fakhruddin Shekh wrote:
> Hi,
> 
> I am very new to Yocto Project and I am using it for IMX.7.
> 
> 
> I followed steps mentioned in 
> 
> https://wiki.phytec.com/display/PRODUCTINFO/BSP+Yocto+FSL+i.MX7+PD17.2.x+Quickstart
> 
> which is basically taken from
> 
> Yocto Project Mega-Manual
> <https://community.nxp.com/external-link.jspa?url=http%3A%2F%2Fwww.yoctoproject.org%2Fdocs%2F2.4.1%2Fmega-manual%2Fmega-manual.html> 
> 
> 
>  It took me 6 hours on virtual box ubuntu to compile BSP(Building Images
> from Source​) and build image. The size it took on hard disk is 42,3 GB.
> 
> 
> I have all final products(.sdcard, .ext4, zimage, uoot, ...) in a tmp
> folder.
> 
> (...build/tmp/deploy/image/machinename/)
> 
> 
> but I didn't understand where to add/edit c++ or any other source code
> to it for my application and how to test it? Lets say I want to
> use UART/PCIE for an application and test it whether it is functioning
> or not.
> 
> 
> I referred the manual but it was not clear to me.
> 
> 
> Can anybody please clarify me.
> 

perhaps devtool can help you here.

http://www.yoctoproject.org/docs/2.5/ref-manual/ref-manual.html#ref-devtool-reference


> 
> Best Regards
> 
> 
> 
> 
> *Dipl.-Ing. (Univ) Fakhruddin Shekh*/
> Research and Development
> ////
> /fon  +49 89 419 671 9604
> fax  +49 89 419 671 9996
> mail Fakhruddin.Shekh@sonovts.com
> web www.sonovts.com <http://www.sonovts.com/>
> 
> 	
> 
> sonoVTS GmbH
> Hauptsitz: Kapellenstraße 11, 85622 Feldkirchen bei München, Germany
> Niederlassung Hohenkammer: Am Königholz Ost 4, 85411 Hohenkammer, Germany
> Niederlassung Frankfurt: Justus-von-Liebig-Straße 9, 63128 Dietzenbach,
> Germany
> Niederlassung Köln: Am Coloneum 1, Bauteil B, 50829 Köln, Germany
> 
> fon +49 89 419671 0
> fax +49 89 419671 9999
> web www.sonovts.com <http://www.sonovts.com/>
> HRB München 206249 Gerichtsstand München
> 
> Geschäftsführer: Stefan Krömer, Franz Olbert
> 
> Tochtergesellschaften:
> Austria: sonoVTS Austria GmbH, Hallwanger Landesstraße 6, 5300 Hallwang
> bei Salzburg, Austria
> United States: sonoVTS Corporation, 200 S. Wacker Drive | Suite 1375,
> Chicago IL  60606, USA
> 
> Diese E-Mail enthält vertrauliche und/oder rechtlich geschützte
> Informationen. Wenn Sie nicht der richtige Adressat sind oder diese
> E-Mail irrtümlich erhalten haben, informieren Sie bitte sofort den
> Absender und vernichten Sie diese E-Mail. Das unerlaubte Kopieren sowie
> die unbefugte Weitergabe dieser E-Mail sind nicht gestattet.
> 
> This e-mail may contain confidential and/or privileged information. If
> you are not the intended recipient (or have received this e-mail in
> error) please notify the sender immediately and destroy this e-mail. Any
> unauthorized copying, disclosure or distribution of the material in this
> e-mail is strictly forbidden.
> 
> 



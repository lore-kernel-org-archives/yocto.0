Return-Path: <michael@opdenacker.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79B3C2BD09
	for <webhook@archiver.kernel.org>; Tue,  9 Jul 2024 15:10:41 +0000 (UTC)
Received: from sender21-op-o11.zoho.eu (sender21-op-o11.zoho.eu [185.172.199.225])
 by mx.groups.io with SMTP id smtpd.web11.609.1720537838722626862
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Jul 2024 08:10:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=michael@opdenacker.org header.s=zmail header.b=Onms6iR+;
 spf=pass (domain: opdenacker.org, ip: 185.172.199.225, mailfrom: michael@opdenacker.org)
ARC-Seal: i=1; a=rsa-sha256; t=1720537831; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=PQ6Pr0suxPFfjXXLh8b1tazJuKSxd5510eyGoBH98Y3jrHGxJfEe7A2pTniFh+2GOfe3jkfAd4PGhLx4M9EwKXfV+2O977ELrauqtUOujZ+MB8QRk2kWKx/IPMsVq8akm8CjH5Wto6PAGAmVKc5CZi1MvlhLzcjPAjt50p9ldDU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1720537831; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=VybT1g5rmS6vTZaQsGKAHrVErc9NssWZSc6auBJDOF4=; 
	b=DdVDkhDM7gBSgZpQuZvKR1SXFAYfFENBEs5bzNNxlfnfMNNgHX3owsC/62kD8S0s9gFg2wwhZEgtaCIROLH+sonAdgbWsl5qUkqjw1dxmmD/oJw7FL/6R2vOYPF1WhZpJdL8pF+S491aTbeas/Z7OZQvWvfOcDXFLgAb8YNj6dw=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=opdenacker.org;
	spf=pass  smtp.mailfrom=michael@opdenacker.org;
	dmarc=pass header.from=<michael@opdenacker.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1720537830;
	s=zmail; d=opdenacker.org; i=michael@opdenacker.org;
	h=Message-ID:Date:Date:MIME-Version:Cc:Cc:Subject:Subject:To:To:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=VybT1g5rmS6vTZaQsGKAHrVErc9NssWZSc6auBJDOF4=;
	b=Onms6iR+ESdaCBju+REQV3kL2NyMFf1VDTjUnI0DDFxbW7fq5KtOhI6loez4mU2m
	QwhvFWmtHqj/92oJC0d1Runza2r7z6Tr/75Fi/AczNR6DWm9W7gguzMuSRNtE75Vezb
	BX5cX+8uNSbeoxoPPbG2dtqxfJVYT0Um8EYcgeCM=
Received: by mx.zoho.eu with SMTPS id 1720537829498855.8707964515405;
	Tue, 9 Jul 2024 17:10:29 +0200 (CEST)
Message-ID: <cf6e0c56-5bcc-43bb-a60a-a5f14ea4be4a@opdenacker.org>
Date: Tue, 9 Jul 2024 17:10:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: uvv.mail@gmail.com, Michael Halstead <mhalstead@linuxfoundation.org>
Subject: Re: [yocto] Bugzilla account
To: yocto@lists.yoctoproject.org
References: <fPTy.1720526382619116884.qczW@lists.yoctoproject.org>
Content-Language: en-US
From: Michael Opdenacker <michael@opdenacker.org>
In-Reply-To: <fPTy.1720526382619116884.qczW@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ZohoMailClient: External
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Jul 2024 15:10:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63451

Hi Slava

On 7/9/24 13:59, Vyacheslav Yurkov wrote:
> Hey,
> I think my previous message to oe-core / openembedded mailing list was 
> not correctly addressed.
>
> Perhaps I'm really missing something, but how do I create an account 
> on Bugzilla?
>
> This page 
> https://wiki.yoctoproject.org/wiki/Bugzilla_Configuration_and_Bug_Tracking#Get_an_Account 
> says a "New Account" in the footer area, but I can't find it.


Maybe the wiki page is out of date after the migration to 5.0.
https://bugzilla.readthedocs.io/en/5.0.4/using/creating-an-account.html 
says that if there is no "New Account" link, it should be become the 
administrator (Michael H?) has disabled self registration.
I hope this helps
Cheers
Michael.



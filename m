Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.92.91.16])
 by mx.groups.io with SMTP id smtpd.web09.8397.1632234389841508496
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Sep 2021 07:26:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=kRo1RcZT;
 spf=pass (domain: outlook.com, ip: 40.92.91.16, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WmhuOmqjLHP3IL+x2nR2Nq4BCmKImMpadcvcpIwJnbo+4iLRJxXdcOtgUs3Vq5ig62qNmj04c/2kVF1C2rbMFOuQWQUXRYNoNe5xkYX+vBe9b2U+iJAhporFm/OJm3KuZakjYlt2yRYq4YhV/ffUDMLLOQtSwKUlWu9KFVAenKY5xyFQXeN4Fv4MnlP11WwBSDsda3TVE6MBqdRgLfLcrzkG1XHDW9k/HoTKrM4B4F2yI5b6j618uZWaRwaTV17/8frICozP3VsMXSoZ8Vqd0E5JsiIN/t1HC47ggRa7A2f6ay3KQnArRiYrLFRLi5OSWzcJ9d8Ruz6QCj/n2m2arg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=juURRyAOmxEPgWaNMIUjveJJQMBr2YN9lB8I/+YaIBw=;
 b=kkkabF1xHbi2IuW2p3mHlTxWhu6OQ6aM4bO1YkQJdwZdaC3S3RBio1VDM2/uuUlVpa1CkTouttM1mO0WXxIc/DgxrbQGski6JEjdpKEdPJ1h6KxrVHK62KKWuGwOFvqJvqSB0lpwZyLCe/CUdxCocVSI7bYav1Fg5yZg9DU/HSSfNoWw7ygZdTcg7uM/U0TbpQmipR2rvTQ98R9HaofQoJcKmhWp9Ch3nMhVrfGcigOBpBXUbngC5T5JOh+bVCsgRKohLH1lAGpmQGSxkV0hY79o9eBwJSdGdsDTBHp3wcDcRYJmYA5EEezPbaKCQMaEfR9jW0973xImYUQbBUgCXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=juURRyAOmxEPgWaNMIUjveJJQMBr2YN9lB8I/+YaIBw=;
 b=kRo1RcZT7qcRs6ig5J7Ihv6h1urLYCwH0Jx95S2SoYtZcQK8T3abk9gjdMXc/L/9jGZ3C01HHSeI15M7QPjl+hdr1KBdMnL3MK3+XHoYL0hPAQ+wnfCuEbm7Y9DYGqmk+6oJKhwkSMrlnSLSZuIVAQRcnN7MxTuGBdQ2UtH0l7NQwaY1ZDW7v58PtGchr8croR8iVP+Sk6LMFxI43I1GGTOoFeCtsPN/mGwmJdkTE3TP1sQ/U1sUGDzzXSlvj+XLLb0ZZbtElTG7TgwKAfBFGH14xF+ZQRkZ6AZEQQ5m8h4gHeIT//0t+sg5OOSPmSGcM+IQluVxLSyomY8ftNSzlg==
Received: from AS8PR09MB4645.eurprd09.prod.outlook.com (2603:10a6:20b:292::8)
 by AS8PR09MB5062.eurprd09.prod.outlook.com (2603:10a6:20b:39d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Tue, 21 Sep
 2021 14:26:21 +0000
Received: from AS8PR09MB4645.eurprd09.prod.outlook.com
 ([fe80::60cd:7afd:e00a:1c6c]) by AS8PR09MB4645.eurprd09.prod.outlook.com
 ([fe80::60cd:7afd:e00a:1c6c%9]) with mapi id 15.20.4523.019; Tue, 21 Sep 2021
 14:26:21 +0000
Subject: Re: [yocto] googletest shared library
To: Lijun Chen <lijchen@blackberry.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <3925c5329d6f46f78c5921fe7965662b@blackberry.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <AS8PR09MB4645D63449C60FC6463045E7A8A19@AS8PR09MB4645.eurprd09.prod.outlook.com>
Date: Tue, 21 Sep 2021 16:26:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <3925c5329d6f46f78c5921fe7965662b@blackberry.com>
X-TMN: 
 [fjJ5Qmxemr2oUEmG21UXuG4r1bElwHx25rNrHxTbWOkZ+iExXSJtt3hrVZURsibQrqr+sHTbACU=]
X-ClientProxiedBy: PR0P264CA0258.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100::30)
 To AS8PR09MB4645.eurprd09.prod.outlook.com (2603:10a6:20b:292::8)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <38b7cbdd-aed5-72f0-b6ef-ba200375080f@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:8109:9a80:3b94:11df:cd87:699f:18eb] (2a02:8109:9a80:3b94:11df:cd87:699f:18eb) by PR0P264CA0258.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend Transport; Tue, 21 Sep 2021 14:26:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6ab99422-b098-41ca-9480-08d97d0bc87d
X-MS-TrafficTypeDiagnostic: AS8PR09MB5062:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ro+kcMre9FGVirgRAQdcvbkal2V1j8KygjavE2hOJMtjY3U/rk9+weBUh2jW4McEdkIksyH46pypFJX3Iw+oXXv5UisSRm5hbwqzwOwMcehwh2QTzotwExxUBwm7/5y7tW4EL0tU9Adi2tiUM6Xl+u7vfJiOSh48tcVJ+OZTeCfjUwHqj+7Dkt1+/DqtuXiscOAbGGf/dOQsM77RVXsOvKqqYwWTGlmrDMAkp6YDBWkPmN5HvWnNd081v4O3iMWstUBp+A1SjhkKLMNLE+J/7Cb7HxdDG1F1n1TEl/VFqSuMQYdNll18RRIMPbVyYjo69XW0NHgHMbgBfOIX+c2I42ijE769W2T7yI5+DNfbGbwXK8WWaM5MFlMWTTVuzOtqQhVolgyS1qSSNJjFtjHagnoaQp607wiGmziHmn7zgXONGAo0TrcIccFqhGGUt2EieW7c4Fc319NzO5mYqGmFiubmFr3/MgThLvxb7825XviQU4lwMni7veMx2yNGU5qELyE+BzjphG6hH0v3pmcN/g==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	nhd8K7or0w7HadpG2q/1EDwk/Qr2tmzbp18iOJffz2klNxz8xceHMR3TAZ/Vs0ckGTYta3AxKRo2aoX9mYnHBYroOXTj3Rv+aW0f+lF7x7SV8gkEMhwk+CRbG8RPbb6xLRFWpjnnOYSjfa1O4BRw2t+SOolIzmi/f8hlzhlG0W/l4X0Aub5olruqpaHF69aRfUsLwvYm7liskUW0mApO3A==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ab99422-b098-41ca-9480-08d97d0bc87d
X-MS-Exchange-CrossTenant-AuthSource: AS8PR09MB4645.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2021 14:26:21.3880
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR09MB5062
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit


On 21.09.21 16:18, Lijun Chen wrote:
> Hi,
> 
> I would like to include libgtest.so into my Yocto image. I added 
> googletest to IMAGE_INSTALL and added the following line to 
> sources/meta-openembedded/meta-oe/recipes-test/googletest/googletest_git.bb:
> 
> EXTRA_OECMAKE = "-DBUILD_SHARED_LIBS=ON "
> 
> 
> The shared libraries were built successfully. However, there are errors 
> in do_package_qc as following:
> 
> 
> ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package 
> googletest-dev contains non-symlink .so '/usr/lib/libgmock.so'
> -dev package googletest-dev contains non-symlink .so 
> '/usr/lib/libgtest_main.so'
> -dev package googletest-dev contains non-symlink .so 
> '/usr/lib/libgmock_main.so'
> -dev package googletest-dev contains non-symlink .so 
> '/usr/lib/libgtest.so' [dev-elf]
> ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal errors. 
> Please consider fixing them.

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb#n34 
(and the next lines) might give you a hint what to do in this case.
Although one could also consider that's something that needs to be fixed 
in the installation script of googletest, as versioned libraries are the 
expected default

> 
> 
> Any idea to fix this?
> 
> 
> Thanks,
> 
> Lijun
> 
> 
> ------------------------------------------------------------------------
> This transmission (including any attachments) may contain confidential 
> information, privileged material (including material protected by the 
> solicitor-client or other applicable privileges), or constitute 
> non-public information. Any use of this information by anyone other than 
> the intended recipient is prohibited. If you have received this 
> transmission in error, please immediately reply to the sender and delete 
> this information from your system. Use, dissemination, distribution, or 
> reproduction of this transmission by unintended recipients is not 
> authorized and may be unlawful.
> 
> 
> 
> 

Return-Path: <kai.kang@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1104BC001DF
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 02:34:25 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.46205.1697769260557946709
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 19:34:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=qzvsitxQ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=86574059b0=kai.kang@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39K1pVOF017279
	for <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 02:34:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=message-id:date:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=lcJ2E1PaKAhhPqHx13O9TuBUESSSvnDZITRr2WAl7bY=; b=
	qzvsitxQE7VOKYI5FAKw5ZGGALdU6fAyzY6USBrHpKqFBmNt+qbwQotbjpxxpkVO
	vSbdvU6T3Akgr+tfNezD75i3GjlhW7O2jxdVaqWE/DLRsuGerk0yk0hZ2HOUlUel
	L3T3kkOGPZgNHLToe1+NlgMoydYCiqfHgSBGDTWD5WO9GJuHyn/JbqdGMAPKCepD
	7KiFQtIUl7vQqXj+05p/pEJTNOSTkHOYs6KnrRRP912jI28o0L2ofQnu2rJf15+W
	q+HxjpF/3BViHYzqS8IFkTwzS+LzRk4KgP7C2dwxu0yFu79Qnebg4oKT4B0BBw6r
	U8Idd/HRTzFInQQc3PmrXQ==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2101.outbound.protection.outlook.com [104.47.55.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3tuevt82hy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 02:34:19 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UkWrbmKCnHTRNcbpGJG2wP7Lyu1BZC8snTsKOCYCjIsOG9QecL22ALrMb1S8GEczDFXCT4JPC1aWjlNIqjZ0kxQpYZI8i1L7+lt4TGlUtiqjaeKGR+V40XZY2RcsyH6pQsr0IvL4/U3ElXH7angBTnxTK64SqwYRW63djF9t1zsEyE+1BgpG9ZXvwdLshBjutGrRsTOVRRoX8iChDFKazfX6kfAxubZdzvIuD5GB+fwli0s8YjnbxA+KIzEAYNvgVrm6/NHSMqjNa39v6jCsWhvnfcVHfHeX1/N+k8pQOlVgaZqWNriCI+u5iS/b2VO4wOFj38w8FVvTApfhc1BKiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lcJ2E1PaKAhhPqHx13O9TuBUESSSvnDZITRr2WAl7bY=;
 b=XEoLpjtZ8WjCn8v4bZchlDBh3076QhR5MRzy5LxMc9ABTWM4iJyjGtr+ZwfgvTfvU+9jZ/nOptDJRN70gdjcGg1FehJegPBJDMlUr29aOnD1UdjdWj0VajqZnUA66T2a3UQuNO9JkTwsazkpWMCropjicIJfKvjyjDgoCCWjYnTcKiA77rDchT9mGbdp8qRCjdaedVwE3VhXQW63zilxUCLnJOOhnxEHc2k+PiALo8owDDFrSFHAAArgHSgyXCbL3BXDJ5r+vbKsJf25WLl9mRVnDWIpAV59CVrGzkfoOR3gx/v9f0OebXSKc7eJmVHE9ADbb6xlR+DynxcYlsbKUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS7PR11MB6064.namprd11.prod.outlook.com (2603:10b6:8:77::14) by
 CO1PR11MB4865.namprd11.prod.outlook.com (2603:10b6:303:9c::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.24; Fri, 20 Oct 2023 02:34:15 +0000
Received: from DS7PR11MB6064.namprd11.prod.outlook.com
 ([fe80::cd09:b7e2:f2e0:3306]) by DS7PR11MB6064.namprd11.prod.outlook.com
 ([fe80::cd09:b7e2:f2e0:3306%7]) with mapi id 15.20.6886.034; Fri, 20 Oct 2023
 02:34:15 +0000
Message-ID: <40c964d9-74cc-223b-83df-973600de20e7@windriver.com>
Date: Fri, 20 Oct 2023 10:34:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [yocto] [meta-anaconda][PATCH] anaconda_oe.py: correct image name
To: Changqing Li <changqing.li@eng.windriver.com>,
        yocto@lists.yoctoproject.org
References: <20231018020602.379476-1-changqing.li@windriver.com>
Content-Language: en-US
From: Kai <kai.kang@windriver.com>
In-Reply-To: <20231018020602.379476-1-changqing.li@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TYAPR01CA0097.jpnprd01.prod.outlook.com
 (2603:1096:404:2a::13) To DS7PR11MB6064.namprd11.prod.outlook.com
 (2603:10b6:8:77::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB6064:EE_|CO1PR11MB4865:EE_
X-MS-Office365-Filtering-Correlation-Id: 931453ca-bd1a-470d-8faf-08dbd1150ce4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	cww9a9M7HD1oj7XoRmWM2O1PmIFuFs7k52mtpOgeGESN7AUku/npr967qGlffzTB1WMAeUGdrKDrWpfqf2qny3zU+N74e9LW1VQ+eYlR/62eizIueZF/FoziPHsDwOKceWDiHgjhV75n3Ks9SGWxRD4HEWWybtTbWiMiqNS+J7sK9/xQNBDKqLGIkmuZg4wVxarHk+kCGeeZVazdp5oF76M3F5cnk3BKXaVpwdZm3FdTv1XvwND9H+OLjNdUGw01y3BrcpKx0mS0FCVYHEQusO0zJ+njm1QFk4zgb7oAYc6RKPIJBe2eC9DMklPcYuntf8bdFe6lEzk7Cr+zt/PtFW5xqS+rj2FX0i5bUCVMCMZDQ8Rrn3ZSoLXa7kFLj6WpTw4HnpUxHsKaRanE/hMgZvasDWKWv9XkEbyKSfsXqeYy08wETSpNfnpEgeEQwkC7hYynt2kvoqX86fiI/zWeJwMqWqg5qfh4dtmeqQz/tdryqKYNVyESi7+ZAPRVZAUVfypEIwyo+5RSO/dMu6vbI2iTX65RyQr/MEQ9jzWj8gANx6RWzYyp0RLXCbwBvsIte5hOalG/qKqySGb69CoiW0VHRzai8FUCst4nyjNf5gIpT/A/Ztixp1YT1BdJvgkkX3IMzckBwkXcTjBFk9RqLEqCcPVHbPGStJ43cNtDByrJ1o6KxuVVwwBDLBQQJ3TentzsiuwNX/NR1x1a6rsDfw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR11MB6064.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(396003)(376002)(366004)(346002)(136003)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(38100700002)(478600001)(966005)(6512007)(6666004)(6506007)(6486002)(53546011)(66556008)(66946007)(66476007)(316002)(41300700001)(5660300002)(8936002)(2906002)(66899024)(83380400001)(2616005)(26005)(86362001)(8676002)(36756003)(31696002)(31686004)(135923001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OEp5NjBhWXZLRk13OUdqOThYVzlQK3k3dUs5dDNEanBaNSt3ZWFXLzd0Y25w?=
 =?utf-8?B?V2xsTWliTmRTSUNhWDRFWGhhQVpyOVRTMUVwTWhsS1ZUZHJjMU1hWUc1b3Rv?=
 =?utf-8?B?cGdsZFdMQTBTeDFocDJzU1ZkQWhQZnhpb1E3cGVZQ1c0L0l6L0hxamtNY3BV?=
 =?utf-8?B?Z0V3RjFWRzR1Mkd1NnA2U3dLcFVDeUNYenQ3RU1ad2U1YS9TNExkQXc1KzJW?=
 =?utf-8?B?V0kvSnBkRVFTTlIrYmZDL0NwU29acGJRa2tXdU0ySjd1THQ3Q0h1ZERiR0Ix?=
 =?utf-8?B?TEJUZ2lydmVMeUZMY200d2hvVGJFaWowakNHUXphM2JYZTdhQ1E0Wjh3M3hx?=
 =?utf-8?B?V3BwalBPVkd4QzZ5dkxVWnQ3KzZCdHFaTHpvakdlYVU4TmpNc2hjZmlIbTE4?=
 =?utf-8?B?UDZCeEtCWm9HSEFaczc3RDlvS09uWGFQOUlqcTQ1T2xuQ2p0aWNpZXFocnd0?=
 =?utf-8?B?RmZMYjd3a1E4Z1lvTG5XMFM4elM3dGNLYlp6YzdjcUx3SjJYQUU3UTIyWTIz?=
 =?utf-8?B?RXY2N1IvUGxQOFNKT0cvSkdndkluc2tuaVJ2VHBER3B1eVpWOVR6T01HRHE0?=
 =?utf-8?B?RzJqY0RsMWQzTnJCVG1obDFnRHY0aWIvTlZWbVB5aWFVSS9NSFV5azlFVE5F?=
 =?utf-8?B?WDBDbnFlYXIrTlN2UmFFWVA1Y0U1bTJXSDdpNGZwQXgvMkQwb2dNSTgrdUcy?=
 =?utf-8?B?TERORGNLWGttTG41YWNHOTR5WkZLQVR1K0ROM2RJbFN4VkdBSTdZSVI3Ujhj?=
 =?utf-8?B?T2tTWXZ3RGpybXlZWDExcXBiTTROUlZ0cTkrd2VBWTFLNzA3cXBQN0RBNzFn?=
 =?utf-8?B?VmdWN1NKSVNQSGNmbHdkYlpiQ01EOXZRYUc0aDNCOHRuQXJYQnlIb25RRkd6?=
 =?utf-8?B?RS9lOHVEdzBKTERRbDBvL01QQUdXZUd2NEZZTlpQYkNOUE8xemQ5endtTkdD?=
 =?utf-8?B?SzNSR05maHoyNWFON0ZzWnN6dWJoSUlCSDJtZWgvNVM3R2RyaC9oZ2xKem5r?=
 =?utf-8?B?dXU5UjZxSmZIaUc0YmxJUXVVSWVMczlQTExaNnJwcHRUMHFWa2FzNVByb2Zr?=
 =?utf-8?B?aitMcmVVMEh4djUvWWthSjRaU1ZiUkNnVm5RM2NaemVtZmJaajlTdmNvY3dM?=
 =?utf-8?B?UlI4RldEUFlBZkNFc01zaERhVmJORTlZdFEvTEZTZTkzWnFvYy9SZDZsUWJi?=
 =?utf-8?B?ZDhJWk1DRDd0V3ZPdGo3VTlGTnV6QzUxOEhzalE0UWNFVm5hOU1NTDFmbGFm?=
 =?utf-8?B?VzZQVDBqUlROc0ZnaHFKVm9EWGJHaVMvaW1rUTFWckpHb2o3NGlhK3QxaFov?=
 =?utf-8?B?VGtFcHNRVzJaNGJMRmoxdVlqeTdzWTlZSDYybzNmcFJBOElvTncrNjJnNEQx?=
 =?utf-8?B?OFJyVU4rU3c1NXZEeU9uWXZJaGg5d3ZmVXM2eUFlWU1FWC9iVjhhN1h0cThN?=
 =?utf-8?B?SExqbVdXYjdPbkQydTZ2dU1UZjc5Sy9rak45aW5pU1FBbFU4aWRVZmE0bEpF?=
 =?utf-8?B?bWNOMXV5bUhLbjE3ejhTQk9OLzlIMVltWkl1cCt0OThick5nZTVZMUt1cWFD?=
 =?utf-8?B?eFduMlhpU1M4eStiaEZMT0ZpOTg3K2xDeVE2bU9NWDhqYWl3SHMvcTZXcW1H?=
 =?utf-8?B?bWFZRjNnWm5nVDZ2ZHY2Qmlyck5kWDRneHAxMFZUUTB1eHhsRUlqTElLWUxq?=
 =?utf-8?B?WjFDTGcvYUVZaUZkQmNEWW1nYVk2ZStBdStFekNMeHdQZ0ZmRHFWTk1zcGFK?=
 =?utf-8?B?TUJiOE1XMFpvT01xM2pqRFlaZjRpUHlkcS9VSGw4WjlEbzJGRy94WkF4emhx?=
 =?utf-8?B?UFY2Ti9IUTFWd1pNci8veW43bkpuZ0VKeCtkSFZqMnhxNjRYcHlIbjBuK2dB?=
 =?utf-8?B?ckFtWjdSSjVYaXFZTVBSVnUzVkxBdzBmUGgvVGRCT2xJZ0pUTmNERHIvY3F1?=
 =?utf-8?B?eGQ3czQrU0NUZDZSSU5XeUV1bTNWcXZTNFlMOFFOK3dTTFMxczZDbHFrQUVM?=
 =?utf-8?B?Ny85UnRkZWNCczJxZG0wNmV0RWtSelk2Z29vVUhZdXFDbWZaQkYwT0l3bGlx?=
 =?utf-8?B?RXJISnVwalBZdVlVMEFsbXNDU2JIWmpQN3NNcWVDdUVKU25zYzdLMFRtYmRU?=
 =?utf-8?Q?aaVN9JpUxMQeSl4zCLB1mbiSA?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 931453ca-bd1a-470d-8faf-08dbd1150ce4
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB6064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2023 02:34:14.7061
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6e/rLClSnqFltPsunZ1mO9v4xtFNCs4zCJpkvDYd9QQh3QujtrCOFEFKy5RqG2JxNU1eVkB0G+7fVi6PTOtG+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4865
X-Proofpoint-ORIG-GUID: jOxEdQBiYTGtu7GPQ884V81ErAqiqyu_
X-Proofpoint-GUID: jOxEdQBiYTGtu7GPQ884V81ErAqiqyu_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-20_01,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 malwarescore=0
 priorityscore=1501 phishscore=0 spamscore=0 suspectscore=0 mlxlogscore=926
 adultscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2310170000
 definitions=main-2310200021
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 02:34:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61425

On 10/18/23 10:06, Changqing Li wrote:
> From: Changqing Li <changqing.li@windriver.com>
>
> Since oe-core commit 26d97acc713 [image-artifact-names: include
> ${IMAGE_NAME_SUFFIX} directly in both ${IMAGE_NAME} and
> ${IMAGE_LINK_NAME}], image name has changed to
> core-image-minimal-qemux86.rootfs.ext4, change accordingly to fix error:
> INSTALLER_TARGET_BUILD does not exist

Merged. Thanks.

Kai

>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   README                                 | 2 +-
>   lib/oeqa/selftest/cases/anaconda_oe.py | 4 ++--
>   2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/README b/README
> index 07b63fe..76e9665 100644
> --- a/README
> +++ b/README
> @@ -162,7 +162,7 @@ Building the target installer
>              Edit conf/local.conf to use:
>              $ echo 'PACKAGE_CLASSES = "package_rpm"' >> conf/local.conf
>              $ echo 'DISTRO = "anaconda"' >> conf/local.conf
> -           $ echo 'INSTALLER_TARGET_BUILD = "<target_build>/tmp-glibc/deploy/images/qemux86/core-image-minimal-qemux86.ext4"' >> conf/local.conf
> +           $ echo 'INSTALLER_TARGET_BUILD = "<target_build>/tmp-glibc/deploy/images/qemux86/core-image-minimal-qemux86.rootfs.ext4"' >> conf/local.conf
>   
>              Edit conf/bblayers.conf to include other layers
>              BBLAYERS ?= " \
> diff --git a/lib/oeqa/selftest/cases/anaconda_oe.py b/lib/oeqa/selftest/cases/anaconda_oe.py
> index bf55308..20b8d5b 100644
> --- a/lib/oeqa/selftest/cases/anaconda_oe.py
> +++ b/lib/oeqa/selftest/cases/anaconda_oe.py
> @@ -146,7 +146,7 @@ class TestAnacondaOE(OESelftestTestCase):
>           ks_file = os.path.join(self.layer_path, 'example/ks-imagecopy.cfg')
>           features = 'TMPDIR .= "_host"\n'
>           features += 'DISTRO = "%s"\n' % self.anaconda_distro
> -        features += 'INSTALLER_TARGET_BUILD = "%s/%s-%s.ext4"\n' % (self.target_deploy_dir_image, self.target_recipe, self.machine)
> +        features += 'INSTALLER_TARGET_BUILD = "%s/%s-%s.rootfs.ext4"\n' % (self.target_deploy_dir_image, self.target_recipe, self.machine)
>           features += 'KICKSTART_FILE = "%s"\n' % ks_file
>           features += 'SYSLINUX_TIMEOUT = "10"\n'
>           features += 'APPEND:append = " textinst"\n'
> @@ -164,7 +164,7 @@ class TestAnacondaOE(OESelftestTestCase):
>       def test_testanaconda_imagecopy_install(self):
>           features = 'TMPDIR .= "_host"\n'
>           features += 'DISTRO = "%s"\n' % self.anaconda_distro
> -        features += 'INSTALLER_TARGET_BUILD = "%s/%s-%s.ext4"\n' % (self.target_deploy_dir_image, self.target_recipe, self.machine)
> +        features += 'INSTALLER_TARGET_BUILD = "%s/%s-%s.rootfs.ext4"\n' % (self.target_deploy_dir_image, self.target_recipe, self.machine)
>           self.logger.info('extra local.conf:\n%s' % features)
>           self.append_config(features)
>   
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61383): https://lists.yoctoproject.org/g/yocto/message/61383
> Mute This Topic: https://lists.yoctoproject.org/mt/102032096/3616933
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kai.kang@eng.windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
Kai Kang
Wind River Linux



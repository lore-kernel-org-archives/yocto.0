Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.4027.1626145630753223076
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jul 2021 20:07:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=ZIO/CKlc;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2828248d43=changqing.li@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16D35Pjw022204;
	Mon, 12 Jul 2021 20:07:07 -0700
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2042.outbound.protection.outlook.com [104.47.66.42])
	by mx0a-0064b401.pphosted.com with ESMTP id 39s0c0826m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 Jul 2021 20:07:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LnzaTCoy7JPZadP83ey23RVqkEzU9i2qxKWIOhNDvtiwnvHl8XmlnlAM34RTkN5UkfwIhcRVV1HFqUVQO1Rsve0s1x/sMDoKxMuWqivtrdDQekIYzBOHu84uD/6jzgztaowiximmfKJKz1dykMHWbY5boxoL/8bNE3vQxOvXKhnYK0MfuWN5sNCppjbILp9+UY0AaPB0S3eRJ7PjbtWAHbEdZrPGvkL2oEaQrHMk7LkbifqRp1UZYIUM6DQnNZDypDmBGLFP/RX8aOqmVVA0q40mnTrrylzDhlk7UzQEnjON5TbrDpqty1sdeH5mHL/fYzU9H8CbIeG1uWWLtmPysg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7hyVfBn5dNDQJxoOAcBYm/+Jt1eTT23OgYuNXi32xzM=;
 b=ik3K1L4MLYrgzi9lBaWuodfTeeOo5WKVJW9FIzM+sE+ppvBNHWs/nvtYiZRhiIuNiNHSmOtcKdnS5uHWslwvmqoqheKGiaw4J5ItY1s9hwoNDP7Uhv97a61ZS0trE74vZLcax8H3M6RfQeiSvN1UAz1GL4dExO3LcVIjE80tTPEcgxKrE4WL1FKzHUsbesA5bmiJ+fGXPZDYX51TH+CAwabvzJnQEju981aZ824IL0uIUFLrt/Pgd1TVgbIcq+uuNguGT4ox4CK4bufBlINnvdwXrNXPEvzuKCPTY+jBD6RjTthf823ri6G9q2dF+N/tNH3BQSto3TrciREkpI4Cqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7hyVfBn5dNDQJxoOAcBYm/+Jt1eTT23OgYuNXi32xzM=;
 b=ZIO/CKlcpIS84Hdk7e0oYlKFMt7InI9uyk8kuwvLUM8X5mugkMlu9i6PUdUqw1tWy5zCudDrXbMj8iv54YZwN6Yhz5BNaqwIfqdOLihnCUk+S4wY2MxsNhuCLOnyirmuL1nwcsa4uOMtaHA68yaFaOblsCOllYzYQ2w4uwuG1k0=
Authentication-Results: bluelightning.org; dkim=none (message not signed)
 header.d=none;bluelightning.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2557.namprd11.prod.outlook.com (2603:10b6:805:56::33)
 by SA0PR11MB4733.namprd11.prod.outlook.com (2603:10b6:806:9a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.22; Tue, 13 Jul
 2021 03:07:04 +0000
Received: from SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::911:37d1:9b4a:7693]) by SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::911:37d1:9b4a:7693%4]) with mapi id 15.20.4308.027; Tue, 13 Jul 2021
 03:07:04 +0000
Subject: Re: [yocto] [layerindex-web][PATCH] models.py: extend max_length of name in YPCompatibleVersions to 100
To: yocto@lists.yoctoproject.org, bluelightning@bluelightning.org
References: <169139A6BC0D244C.21709@lists.yoctoproject.org>
From: "Changqing Li" <changqing.li@windriver.com>
Message-ID: <fbbc18e9-e143-6814-fc55-7d7052051001@windriver.com>
Date: Tue, 13 Jul 2021 11:06:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <169139A6BC0D244C.21709@lists.yoctoproject.org>
X-ClientProxiedBy: HK2P15301CA0020.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::30) To SN6PR11MB2557.namprd11.prod.outlook.com
 (2603:10b6:805:56::33)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.189] (60.247.85.82) by HK2P15301CA0020.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.4 via Frontend Transport; Tue, 13 Jul 2021 03:07:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f33cf486-18cc-4ec3-dbab-08d945ab4a6a
X-MS-TrafficTypeDiagnostic: SA0PR11MB4733:
X-Microsoft-Antispam-PRVS: 
	<SA0PR11MB47333E004870602B5611DC4A82149@SA0PR11MB4733.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	H5GEPCWOZZJKMOUceO0PZ4WqXrqS1M9sltcNqLXuF1B+0z/UpezsmlRm+Qc9b7nSo6sfn3W5RTHYxNRC/v/a+aEfJ48s89Ots3uom2nlrx5HmF5pkv+Ww8gSG+X76mbJaznWSC1Vaez8r2Zlp5bPYPwMzFSr/a88wXgMKaOCvZiaj34FABjA7t6+/1Xu910J79qL4QWEIVgkH7KHpr+kdkiga1vpoKJYszcD3B1diwIu4TZTcRLowcXfbgEjPZHROSYpAUisaLkaacmU2fSSW2PjD2VZ3pkYrg81z295KQo4AQ6/OooE2MQAyV2kjXSHq2rcM16uFy71iwwlInBQnpYmT2mMYvLgkzzuzdqHJHnnD+yWEJ122M3d4LeurDIf8f29jo+p72Ny9tl50APuED8ZF0UN/ZR/UQuJONhTTVdo0c0APRSalyi+i1wIMOr5ylAhVBEMRTBpmn/LWa4GJpBzVWh+8UGZE1QpRkpeVwuifAl7JzIfgp/xQH1VrF+6lmHJX8X9dI5JOLjOWz+mMisDChBTGLCWm9G2qYbkm34nib9IkM6v9QBAEHxeROC+7z+n5zkdeqpFS+H/HlF+D+cn6cZjbND+DHnfGPCHNYH9YCtEKTRVu1OrxoyEflATsZW9MDbYI80+x2UjMt8O+sSteb5MMw1zu10ElcwUX9geLG2CQLsHQwEUcJWgWT4e6Nu1ikICT26eyVDattPQEjTWXOg43yJQ1J50KFONbvp/6OnOKfmPpMGsdSkJMLUWZ9VHoPIjMqLRrJveyON5FnV8c8NM3iakPFBmJMGAsp7DVyHM8QC4w70qDTfwnM0jK++jnRldxnNmjfi8FXCwtAsOYFehLJbRE0xw5dLEhX0QUjTpC2/BwZD/N1g61P/w1xBwlA5zNl2SPE1G5CNunaqkUeKff06pbL+gySBWw/Y=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2557.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(396003)(39850400004)(366004)(376002)(16576012)(83380400001)(316002)(8676002)(956004)(2616005)(6706004)(44832011)(478600001)(31696002)(26005)(53546011)(36756003)(38350700002)(86362001)(186003)(966005)(8936002)(6666004)(6486002)(5660300002)(166002)(31686004)(66556008)(66476007)(52116002)(38100700002)(2906002)(66946007)(33964004)(78286007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VE8zY1RWNWE0ZEFLL2l5bmxKaGtJVkMvZ0tUY3EwOFRZeFVqWE9BaE9UZ2Na?=
 =?utf-8?B?eHZycmI2ZVJxbE9IOWNzUXp3V3hEOVM4UThZc0tFUGZCMU5OaFphV05sOUQr?=
 =?utf-8?B?NHgwWEtjZzlXRFkvTUJvYUVDRlR4M3J4REEzaUxaMlF3NzRTQW5QODdsWkxp?=
 =?utf-8?B?NUYxYmxhM3hXTGh2b1RCdkxGdkRDcE0vMS9TeWUwZ0lHb1VUdTg0cEw0Vm9M?=
 =?utf-8?B?cFU3bE1OTDNsS1RLcG1palg1cmtITmVTYzVDRHBhbnVpNWZ2WWJ2TzJtQ1Rj?=
 =?utf-8?B?S3VndjVGTURqK3dhNEdFRGhSbFVNYmo4WnFFZHBiVlI3MTdKQUZmNllJVU41?=
 =?utf-8?B?b3Q3UUQvTHkzVFRGOU5TUGdORm5LUENHVXcvU0VXa1JOZ1BmQzRDdDIzMkwz?=
 =?utf-8?B?QjNEaG9YMXJydE9Jb2FwdHNOMHUxODgvWUVmUFVhKyt1T1lLOXQ1eXFTdG02?=
 =?utf-8?B?QUFpT2o5VUMxY3RTbHgvS2lNeHVrNWdJeFQxZnNKaHk5YVZpRWlLRjRLRUFw?=
 =?utf-8?B?MVhrQThQV05tM3dSZEkrTHZEZm50S1I4RlUxNTYrQWVUb0hCeHpCTnh3V0lo?=
 =?utf-8?B?QWxuend2MmpsTWVROEtQcWVnNHp0RVNiMzdiZ2M2cTlEUE9xUldRYmlvRGM1?=
 =?utf-8?B?Uk8yQkN2NUlKSG0wczNtSlNvM0ZWa0RZREdKUGgyYlQ5MFlBVG0yK2dES1BC?=
 =?utf-8?B?ekFzTEpKUlpIU0JyZXBQYkcxaFVkdTV4RFEzV0JubkliV1ltS1kxWFk3Y2Jw?=
 =?utf-8?B?ZEpIbVdWRjdEc1U2RFBVT203cVhYejY3V0V4THFoNzFadU15SXFnRFByZWhk?=
 =?utf-8?B?SHdIYzF0bnpZYUpUMG5zaGU5cHFnamdGdGFuSGhGUlZkWmlvRTVjaUZEbFI4?=
 =?utf-8?B?V3Q5a1U4SHRPSHRZNm1KVHFHNnkzNVhwc2VMVUpUTGtoclY0OElWdm9CNDhE?=
 =?utf-8?B?azU2WCtvV1ZTQzRROHk2bE5WQ2RIRS93eWNrc0VMU3V3YjdHQ3VYaFc4WHZJ?=
 =?utf-8?B?VXJNWThPWlJUaUtFQ3FrcFRUSHhzMWdiSkk2TVZ1QVk2TEJad3RUbjZaUHk5?=
 =?utf-8?B?VUQwZVJlVnp6d0V4cUdXZ0d0a09oK3pxcGVrTTN5cU9mWXlvMnZUSjQ1WkJ0?=
 =?utf-8?B?M3A4K2U3S1BXeTBZeVc2VldncUZpWllJK3BzaEJlVmR2RkROUU9sM0NBNFVG?=
 =?utf-8?B?ZWVhd0cwY0pGKzZXVnVYQ1JqZmVYREMvaU1YcURlOWcwZ0QydElmZUg2dzFR?=
 =?utf-8?B?ZVlwVjlDRVFGcUduZEl3Q1JicVVPY1FsdUFiWXBSb3RhR1l1YTY5RGVVV0xH?=
 =?utf-8?B?QW9xVXdmbTk4T2k4cG5oNnF1QmROcU40VU1tN2Q0eTJuYzRQR0s0NDhtaUlE?=
 =?utf-8?B?NWJRa2ZITDYxbEZOLzBPWVFnb2lVa0xickorbzZYa2htaXNhbHE1NExGVkp2?=
 =?utf-8?B?aEF1K1dJWTA2K2c2MFk2UnI5VnVSYlFPVjYxOXRZaC8zRUxWemRhZ1lDOW9w?=
 =?utf-8?B?L1c3dDFORWYrblU0TXRrOStlREVYRVNVM0lhbUhLVkY2U1AzTlN4U2VqRER2?=
 =?utf-8?B?ZXVwL1R2bmJXOFJWVTNpeXZxT252WGk2cXRScnRaSTlZd2pSS3kwazJPZDZr?=
 =?utf-8?B?MUdvTkZwSHhEaFpKZkgrYjN5UVpMT3lMSG4vdTArTTlyZ1NiMjhMdnR3TUVl?=
 =?utf-8?B?ODBaVlNPcWx0Q2w3a1kvN21wNFZheTVCazZuaTNsanBSQW5oMko3L3k3ZWNz?=
 =?utf-8?Q?Wby5tlX5FzLMu9DScvdFJ8K7deDLA8rLKRm0Xcw?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f33cf486-18cc-4ec3-dbab-08d945ab4a6a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2557.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2021 03:07:04.3594
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ESL0G4anhkFg1s+EgnKk6Ajk06eKWJKL9pUbAbFci9G0ZZNJ3Wxvu9L5qSCybdqRcmANmYNCTDLNQlLr2fQAJIA/+GEE/5hRjlsohw2VRIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4733
X-Proofpoint-GUID: 6q5zt0mJIqVzPtIIcQxavZXvcsn-Tc3a
X-Proofpoint-ORIG-GUID: 6q5zt0mJIqVzPtIIcQxavZXvcsn-Tc3a
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-12_14:2021-07-12,2021-07-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 priorityscore=1501 clxscore=1011 malwarescore=0 adultscore=0
 impostorscore=0 mlxlogscore=999 phishscore=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2104190000 definitions=main-2107130017
Content-Type: multipart/alternative;
 boundary="------------B90B0BFF2BDBA2B0CC18E456"
Content-Language: en-US

--------------B90B0BFF2BDBA2B0CC18E456
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

add Paul Eggleton

On 7/13/21 10:44 AM, Changqing Li wrote:
> From: Changqing Li <changqing.li@windriver.com>
>
> Now, YPCompatibleVersions's name is only designed for using version like
> 2.0 3.0, the max_length is 25. but we mostly use Codename for layer
> compatibility, eg: LAYERSERIES_COMPAT_dpdk = "dunfell gatesgarth
> hardknott", in this case, it's not enough to save the compatible
> version. so extend it to 100.
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   .../migrations/0045_yp_compatible_extend.py   | 24 +++++++++++++++++++
>   layerindex/models.py                          |  2 +-
>   2 files changed, 25 insertions(+), 1 deletion(-)
>   create mode 100644 layerindex/migrations/0045_yp_compatible_extend.py
>
> diff --git a/layerindex/migrations/0045_yp_compatible_extend.py b/layerindex/migrations/0045_yp_compatible_extend.py
> new file mode 100644
> index 0000000..3544b4b
> --- /dev/null
> +++ b/layerindex/migrations/0045_yp_compatible_extend.py
> @@ -0,0 +1,24 @@
> +# Generated by Django 2.2 on 2021-07-13 02:43
> +
> +from django.db import migrations, models
> +import django.db.models.deletion
> +
> +
> +class Migration(migrations.Migration):
> +
> +    dependencies = [
> +        ('layerindex', '0044_extendedprovides'),
> +    ]
> +
> +    operations = [
> +        migrations.AlterField(
> +            model_name='classicrecipe',
> +            name='cover_layerbranch',
> +            field=models.ForeignKey(blank=True, limit_choices_to={'branch__name': 'master'}, null=True, on_delete=django.db.models.deletion.SET_NULL, to='layerindex.LayerBranch', verbose_name='Covering layer'),
> +        ),
> +        migrations.AlterField(
> +            model_name='ypcompatibleversion',
> +            name='name',
> +            field=models.CharField(help_text='Name of this Yocto Project compatible version (e.g. "2.0")', max_length=100, unique=True, verbose_name='Yocto Project Version'),
> +        ),
> +    ]
> diff --git a/layerindex/models.py b/layerindex/models.py
> index 329cc33..2317740 100644
> --- a/layerindex/models.py
> +++ b/layerindex/models.py
> @@ -217,7 +217,7 @@ class LayerRecipeExtraURL(models.Model):
>   
>   
>   class YPCompatibleVersion(models.Model):
> -    name = models.CharField('Yocto Project Version', max_length=25, unique=True, help_text='Name of this Yocto Project compatible version (e.g. "2.0")')
> +    name = models.CharField('Yocto Project Version', max_length=100, unique=True, help_text='Name of this Yocto Project compatible version (e.g. "2.0")')
>       description = models.TextField(blank=True)
>       image_url = models.CharField('Image URL', max_length=300, blank=True)
>       link_url = models.CharField('Link URL', max_length=100, blank=True)
>
> 
>

--------------B90B0BFF2BDBA2B0CC18E456
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>add Paul Eggleton</p>
    <div class="moz-cite-prefix">On 7/13/21 10:44 AM, Changqing Li
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:169139A6BC0D244C.21709@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">From: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>

Now, YPCompatibleVersions's name is only designed for using version like
2.0 3.0, the max_length is 25. but we mostly use Codename for layer
compatibility, eg: LAYERSERIES_COMPAT_dpdk = &quot;dunfell gatesgarth
hardknott&quot;, in this case, it's not enough to save the compatible
version. so extend it to 100.

Signed-off-by: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>
---
 .../migrations/0045_yp_compatible_extend.py   | 24 +++++++++++++++++++
 layerindex/models.py                          |  2 +-
 2 files changed, 25 insertions(+), 1 deletion(-)
 create mode 100644 layerindex/migrations/0045_yp_compatible_extend.py

diff --git a/layerindex/migrations/0045_yp_compatible_extend.py b/layerindex/migrations/0045_yp_compatible_extend.py
new file mode 100644
index 0000000..3544b4b
--- /dev/null
+++ b/layerindex/migrations/0045_yp_compatible_extend.py
@@ -0,0 +1,24 @@
+# Generated by Django 2.2 on 2021-07-13 02:43
+
+from django.db import migrations, models
+import django.db.models.deletion
+
+
+class Migration(migrations.Migration):
+
+    dependencies = [
+        ('layerindex', '0044_extendedprovides'),
+    ]
+
+    operations = [
+        migrations.AlterField(
+            model_name='classicrecipe',
+            name='cover_layerbranch',
+            field=models.ForeignKey(blank=True, limit_choices_to={'branch__name': 'master'}, null=True, on_delete=django.db.models.deletion.SET_NULL, to='layerindex.LayerBranch', verbose_name='Covering layer'),
+        ),
+        migrations.AlterField(
+            model_name='ypcompatibleversion',
+            name='name',
+            field=models.CharField(help_text='Name of this Yocto Project compatible version (e.g. &quot;2.0&quot;)', max_length=100, unique=True, verbose_name='Yocto Project Version'),
+        ),
+    ]
diff --git a/layerindex/models.py b/layerindex/models.py
index 329cc33..2317740 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -217,7 +217,7 @@ class LayerRecipeExtraURL(models.Model):
 
 
 class YPCompatibleVersion(models.Model):
-    name = models.CharField('Yocto Project Version', max_length=25, unique=True, help_text='Name of this Yocto Project compatible version (e.g. &quot;2.0&quot;)')
+    name = models.CharField('Yocto Project Version', max_length=100, unique=True, help_text='Name of this Yocto Project compatible version (e.g. &quot;2.0&quot;)')
     description = models.TextField(blank=True)
     image_url = models.CharField('Image URL', max_length=300, blank=True)
     link_url = models.CharField('Link URL', max_length=100, blank=True)
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------B90B0BFF2BDBA2B0CC18E456--

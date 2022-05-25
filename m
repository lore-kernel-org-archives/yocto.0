Return-Path: <dwatkins@sierrawireless.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DE35C433EF
	for <webhook@archiver.kernel.org>; Wed, 25 May 2022 20:01:08 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.63])
 by mx.groups.io with SMTP id smtpd.web09.11591.1653508864872994851
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 May 2022 13:01:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sierrawireless.com header.s=selector1 header.b=Slrkq1bZ;
 spf=pass (domain: sierrawireless.com, ip: 40.107.92.63,
 mailfrom: dwatkins@sierrawireless.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JVW4zZADLm74yPcSCrJzqu0sgUBSspC/sF6FEpUTH3EPocvpxjvIp4zYMcAByGM3x/QZse9oM8we6ifVXI6m7EsvqtdoatRYUPhregbWKUXOwxmse3KQ5S44VV10pKOdM5hxl9sJMZSQtYMUZnRQezCgShhE2BG/DnUnHAJd1NmRrGba1dmUvcdCE1euZ9/KJRdKXjnqllTV4Z17eB2FH8q3zT4wMXMXeBXs4ou0u6s9TrEC/3UdEPE1C3a2jQOyy7F9E3olAyN1umvAz4xI6By6Ix0BzIYtD1wQ+jJpTxRrK9VS9pPZb2HbHbhmPVgctyq5R++nMp9xQfTSj5h69g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xZCWJx2DrCnfwGADCLfonSJxuPRUBLFZGXbdlo32R9Q=;
 b=I/Qhq6FS12WTWHODJe+uNcK/7Fqa80NysRZWRuMIZEjkJgFe6JR7J2OwxB/Y7zGNduPw+ADev/HkHD/tiCPZibydDeFzwHAed4oRFw3175R9iA1RwjcvDdRg0M6DIhRNXzhUEbikzQPt/NMKr1apRA9Q2Rwadbtdx1q4mImLLXA0LAnTQTJOlgX3z+zC03F4mm9XYE0gSwNTnSepxcdSqT75ZIHwCHjvW+C/xFF/9q0Eu0wCFnsTvipecf5OA/z1rHhXIXqclKNLf1/4U9CSQ0LV34OGacw0U/IaApn1avNgaXE/QyvICmPEG9HbXd5MDgPkTHQYFQKcCso2U2VqoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sierrawireless.com; dmarc=pass action=none
 header.from=sierrawireless.com; dkim=pass header.d=sierrawireless.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sierrawireless.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xZCWJx2DrCnfwGADCLfonSJxuPRUBLFZGXbdlo32R9Q=;
 b=Slrkq1bZxYt8q0oWPtauQfcK5auZloNBN3AkOm+M+zaHqdtSjkjqh4OkmCLUXZKxpECO4Sr1kn7rGRXL/rCuK3Fi0SIRuteyX54FwUMNbFzzA9MkpiXgn8TyQ0rrp8VvQD5QtG8uj7Sx7nTEEWx3zvT9KAtZt0/EUYmhjZ99UvA=
Received: from CO6PR02MB8740.namprd02.prod.outlook.com (2603:10b6:303:137::20)
 by BY5PR02MB6084.namprd02.prod.outlook.com (2603:10b6:a03:1b4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Wed, 25 May
 2022 20:01:00 +0000
Received: from CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::14d1:e21:14e8:209a]) by CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::14d1:e21:14e8:209a%5]) with mapi id 15.20.5293.013; Wed, 25 May 2022
 20:00:59 +0000
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: Steve Sakoman <steve@sakoman.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Kirkstone 4.0.1 - Exception: NameError: name
 'json_summary_name' is not defined
Thread-Topic: [yocto] Kirkstone 4.0.1 - Exception: NameError: name
 'json_summary_name' is not defined
Thread-Index: AQHYcG1ish3HVK20KUaBIDap8n2Xx60wAroAgAAARqU=
Date: Wed, 25 May 2022 20:00:59 +0000
Message-ID: 
 <CO6PR02MB8740F009EED1FAD0877132E9B2D69@CO6PR02MB8740.namprd02.prod.outlook.com>
References: 
 <CO6PR02MB8740C7906FFA88F226E683A4B2D69@CO6PR02MB8740.namprd02.prod.outlook.com>
 <CAOSpxdaMvHq1_Dsri6o+SN4OqB0A-Kedko+8Ds7KuE=V5UBpyQ@mail.gmail.com>
In-Reply-To: 
 <CAOSpxdaMvHq1_Dsri6o+SN4OqB0A-Kedko+8Ds7KuE=V5UBpyQ@mail.gmail.com>
Accept-Language: en-CA, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sierrawireless.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 75226cb8-708e-4e45-7a5c-08da3e8949d9
x-ms-traffictypediagnostic: BY5PR02MB6084:EE_
x-microsoft-antispam-prvs: 
 <BY5PR02MB6084EB3B0A20461B5D975C27B2D69@BY5PR02MB6084.namprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ggHBa/T7bNTKjD9T4Ie8kTWcA6MpOrmn0liw8uGHTketqWG1zeuOC8rQiGgoOWHzckD9WbSZCqoNK3LmKA/dACUZPssJfBaPx0PpXqBwt+YKcuSiOzmcZe3cjM9Bv/ZpOx/TkAxTQhVz1/AIuxB0QPciSsfOqUttk+gatVUImbT5lTsuZTc0R8hTOygyyTLjhCQ8nRPQ9eRrDwYmqKgn9ZKmehGOrXLKAsa4oQiHZeW4KA5MOdQ5UT80U1puucOz+21Le99/xFLikhuDM4ekloKuZO7qcFQDkUQ6GiRjNtNJ6Ictsk/7AmRbkZ8+6s4XgSGtlXWhyAUnH/SK9kvLltQH7aZMQXRvhJ7oHMxZrDEb+oGvsvvq+q2KwYO6V3E+hVYpXusw0wVtqNOK403LGPFMWgc0xI9m0JGyTfXzfqJvWwAwr5RGkB+7UriBQwHp9sdaMeT0MaSJ0bVGcwqUSYhtMVc14Hrxm80o/P6xm0/r2RUXsUhhdrNTsh9d49hndx9EsotuHlJi0ElXwq8M/UbmK+pRzvALxnOtKKVIjer9VvvRbHEGLrsOUe9YBgpxF9hQycX7Lhz2P0dJUuZ+x29K0YtM8lto4oXdIG3t0+gBIhHDs9FcrbbIfYQUdfvMNqo+J62S5x9KZRIabXrDvvVN+6soRUaXbCm/bEaV10efKEciwEU+/msbePzKoz0TrE32trNS5LfTjnvjWvdlUmEXEpDsjtLQBcm3iTe3eT1YjUzbOip5ixiaXp51KZhzaqOJI3uXUEKD1xng0F79hFg2HDXRlzJ0+U8wGJUgjFw=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR02MB8740.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(38100700002)(66556008)(76116006)(83380400001)(4326008)(86362001)(66946007)(66446008)(66476007)(64756008)(186003)(55016003)(52536014)(2906002)(5660300002)(38070700005)(9326002)(8936002)(122000001)(166002)(966005)(40140700001)(6916009)(316002)(71200400001)(508600001)(45080400002)(7696005)(33656002)(6506007)(9686003)(53546011)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?FqDct7WCx9+kc9PGEDYDlj8UOLx4fhPnPd8edzSSivubCqcOuDnq6Z+X?=
 =?Windows-1252?Q?jwHYfDUDp0jClUyoO6PNc7O3He5iSbIMytkA3yUjOAGIWw8AZre90Wyx?=
 =?Windows-1252?Q?cKCzLX/+m65X5E5mXsoUD0UzPzNGnBCrzSAKDr9k9HrI+pcBLBZaQOwm?=
 =?Windows-1252?Q?sGCyrn6t/tdjeIDGLNDyjKpD6mFYIL7+qmwpl8P2sLHIrNixMmYE6Eeg?=
 =?Windows-1252?Q?ztjWxWdinppPXo+s745aN9gADWIJUOXwMkOrT/5zMU0UOHtH0rPSroYz?=
 =?Windows-1252?Q?a5bCGjcRwl+I/yJe6vbk0Grm7dBr5k7Cx7jy3F1ZP/PjADdNj+uvyWw0?=
 =?Windows-1252?Q?G3GMXynJCCrH3qdVBbE+XOG82l6ULSKHN3j467NUqHrbs7/fUjxRItPt?=
 =?Windows-1252?Q?hapherFnYyVlSUa3JL711y9/1l3W8K9JdlM8zsSaeIg7cQbTOTD6uQr0?=
 =?Windows-1252?Q?xdD2t9s35G2yynTgKm41JgNG/hQdjNK6qwQBl+5kiMsXi/q9v/qmvXnj?=
 =?Windows-1252?Q?JxDgPbhJIkSjhcnfkhGRHoFEk4E96oVa9S45F2CNP9PacN8LKveGi0Xw?=
 =?Windows-1252?Q?/hifCjqRzNvcOVNS5RzsMrHFlbwwwoxdNncL021e7uK3bId93fHLzpbm?=
 =?Windows-1252?Q?NZ73h5LcVnSuGxgpxyvKt6P1obwXLD7wiE2WdgDPna1GKexmgXIatG0C?=
 =?Windows-1252?Q?X7gP81yU+ebBFXntwO5fazx7qKlByw+2rnEsL1AwjnxguTZ+YQaylgES?=
 =?Windows-1252?Q?Q0x6owcxJWtbIEdH6vUwK+tGYt9mGSh0GwhVq46FV3I4C7ODP5eccOwg?=
 =?Windows-1252?Q?CIQKMGL3Z4iHYO85BjwcusUoRZVSF0Wf6C1hRlcGxWlHwhlKq7hjOCyA?=
 =?Windows-1252?Q?m1PGm7tNIpemURhxqZK2xpilTpFaIeRcgAqWN/YK5686JHfgm9YNtrIK?=
 =?Windows-1252?Q?rCdfOYnhjZnL77B7aWw9ttadxkxxze3nJv6M+hsege2jxSNx4nccedX0?=
 =?Windows-1252?Q?idgdQp6N7Fcv3E25c8vME83g0GAijIDCWXzkHvvKpI2/xvHTSLIIyPHF?=
 =?Windows-1252?Q?4u67Nda9jzIE9RoDrlO4RMmtnBDTRM1p4311YGsr9sJ3+cVb+RfHSw+z?=
 =?Windows-1252?Q?B3YiVvMBWMEWkw0vLfWcJzUGDu3BTAGR/9NwW9cTHDG5xPw+vz+JYN2w?=
 =?Windows-1252?Q?bFu8F5WKl2BreR8RDD+nERMsMjUyEUKTKr1YfMOrNI+qjjz9IzRxKNEX?=
 =?Windows-1252?Q?TT6XBfp4nRLb2zhCkiU5zbugaU/6QFwZGUBRRqdIANgCoezsiS1y631v?=
 =?Windows-1252?Q?pM8HxPGdXNvCwlZXzc1DtaZxG/tMtyyVNPsqjJ5xAya0pyRDcNNilD/T?=
 =?Windows-1252?Q?nCsjdY7RfGa5o5Fgr7KnfzihTxutLIyN/CSQOmNKOCxWh+ExxtJTqsLw?=
 =?Windows-1252?Q?EEsAPzcQjXSYnJGUU7t6qgA71ThKdgIV8ES+Gp6CMbIKzj5S3WjBETyL?=
 =?Windows-1252?Q?HIRpG1PWjAwL7sptBZyjWJjjS3YQG3snvSfcc0C0d4u7r+9yZmLg0TlG?=
 =?Windows-1252?Q?8IDZVtbejAzwZ9pkaFb/bNNEmlinDXf9WOiljO7S8I07V8r9tZQxV5iy?=
 =?Windows-1252?Q?s53/NHRqJpJTNok+TIVb0MqgC9Ed0x5btpY3WDaOAXju9tPZ3Joa2vBO?=
 =?Windows-1252?Q?qDmTLPO2+mJWkXn2DXjSJNkWWd9U+yCd3Ph4Hr/PZCxmNpbwHltCRDTu?=
 =?Windows-1252?Q?1NxbhiGyjMe6BfQlBgroaFXSztkmyHoASeksAPYOp9el3oyvvxcTCGSP?=
 =?Windows-1252?Q?Hdq0vg6dbtm+mawFKlXJU2IqaVhWePMB+F2ptdyf6CVfxAYXyQ9bwceC?=
 =?Windows-1252?Q?9fLlpimpEOrZ4wTjsVlRN+VHsEg0L3CvP0pBgSBXY31iI3kj6hqpIpwJ?=
 =?Windows-1252?Q?m01aBPZn?=
x-ms-exchange-antispam-messagedata-1: 
 zw9Dd2qinxZXCTZTAyQeM2oNRdbG+KlJ8MKMOLjwxKiHKpUKg2Z9K4SN
Content-Type: multipart/alternative;
	boundary="_000_CO6PR02MB8740F009EED1FAD0877132E9B2D69CO6PR02MB8740namp_"
MIME-Version: 1.0
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR02MB8740.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 75226cb8-708e-4e45-7a5c-08da3e8949d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2022 20:00:59.6152
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 JPaHV34r4GdObFaEl5PxUPTcAlObrm1Dq4pukEeT/ptiKjaY9+/+ul2EqXm9zuBjVnZZ75Xek+eD+vkgyxw1ZJXdhUAJxC4YDPlDhdJfmu8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6084
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 May 2022 20:01:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57191

--_000_CO6PR02MB8740F009EED1FAD0877132E9B2D69CO6PR02MB8740namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Steve,

Awesome!  Thanks, I will watch for it.



Regards,

Darcy

Darcy Watkins ::  Senior Staff Engineer, Firmware

SIERRA WIRELESS
Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231 11=
00
13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
[M4]
dwatkins@sierrawireless.com<mailto:dwatkins@sierrawireless.com> :: www.sier=
rawireless.com<http://www.sierrawireless.com/>

From: Steve Sakoman <steve@sakoman.com>
Date: Wednesday, May 25, 2022 at 12:58 PM
To: Darcy Watkins <dwatkins@sierrawireless.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Kirkstone 4.0.1 - Exception: NameError: name 'json_sum=
mary_name' is not defined
On Wed, May 25, 2022 at 9:34 AM Darcy Watkins
<dwatkins@sierrawireless.com> wrote:
>
> Hi,
>
>
>
> After sync-up with kirkstone 4.0.1, I get the following error=85
>
>
>
> Image CVE report stored in: /home/dwatkins/workspace/mgos/voyager1/build/=
tmp/deploy/images/mg90/omg-supplement-mfwimages-mg90-20220525182226.rootfs.=
cve
>
> ERROR: omg-supplement-mfwimages-1.0-r0 do_rootfs: Error executing a pytho=
n function in exec_func_python() autogenerated:

There is a fix for this issue on list for review, it should be
available in the kirkstone branch later today.

Steve

> The stack trace of python calls that resulted in this exception/failure w=
as:
>
> File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
>
>      0001:
>
>  *** 0002:cve_check_write_rootfs_manifest(d)
>
>      0003:
>
> File: '/home/dwatkins/workspace/mgos/voyager1/upstream/yocto/poky/meta/cl=
asses/cve-check.bbclass', lineno: 213, function: cve_check_write_rootfs_man=
ifest
>
>      0209:
>
>      0210:        link_path =3D os.path.join(deploy_dir, "%s.json" % link=
_name)
>
>      0211:        manifest_path =3D d.getVar("CVE_CHECK_MANIFEST_JSON")
>
>      0212:        bb.note("Generating JSON CVE manifest")
>
>  *** 0213:        generate_json_report(json_summary_name, json_summary_li=
nk_name)
>
>      0214:        bb.plain("Image CVE JSON report stored in: %s" % link_p=
ath)
>
>      0215:}
>
>      0216:
>
>      0217:ROOTFS_POSTPROCESS_COMMAND:prepend =3D "${@'cve_check_write_roo=
tfs_manifest; ' if d.getVar('CVE_CHECK_CREATE_MANIFEST') =3D=3D '1' else ''=
}"
>
> Exception: NameError: name 'json_summary_name' is not defined
>
>
>
> ERROR: Logfile of failure stored in: /home/dwatkins/workspace/mgos/voyage=
r1/build/tmp/work/mg90-poky-linux-gnueabi/omg-supplement-mfwimages/1.0-r0/t=
emp/log.do_rootfs.16510
>
> ERROR: Task (/home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipe=
s-images/images/omg-supplement-mfwimages.bb:do_rootfs) failed with exit cod=
e '1'
>
> NOTE: Tasks Summary: Attempted 8400 tasks of which 7718 didn't need to be=
 rerun and 1 failed.
>
> NOTE: Generating JSON CVE summary
>
> CVE report summary created at: /home/dwatkins/workspace/mgos/voyager1/bui=
ld/tmp/log/cve/cve-summary.json
>
>
>
>
>
> 645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 130)       =
  json_summary_link_name =3D os.path.join(cvelogpath, d.getVar("CVE_CHECK_S=
UMMARY_FILE_NAME_JSON"))
>
> 645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 131)       =
  json_summary_name =3D os.path.join(cvelogpath, "%s-%s.json" % (cve_summar=
y_name, timestamp))
>
> 645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 132)       =
  generate_json_report(json_summary_name, json_summary_link_name)
>
> 645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 133)       =
  bb.plain("CVE report summary created at: %s" % json_summary_link_name)
>
>
>
>
>
> 645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 210)       =
  link_path =3D os.path.join(deploy_dir, "%s.json" % link_name)
>
> 645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 211)       =
  manifest_path =3D d.getVar("CVE_CHECK_MANIFEST_JSON")
>
> 777f1d42b62 (Marta Rybczynska       2022-03-29 14:54:31 +0200 212)       =
  bb.note("Generating JSON CVE manifest")
>
> 645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 213)       =
  generate_json_report(json_summary_name, json_summary_link_name)
>
> 645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 214)       =
  bb.plain("Image CVE JSON report stored in: %s" % link_path)
>
>
>
>
>
> I am not sure whether we need to locally setup the =93json_summary_name=
=94 in  =93python cve_check_write_rootfs_manifest ()=94 like was done insid=
e =93python cve_save_summary_handler ()=94 or if something different was su=
pposed to be passed to =93generate_json_report()=94 instead.
>
>
>
>
>
> Regards,
>
>
>
> Darcy
>
>
>
> Darcy Watkins ::  Senior Staff Engineer, Firmware
>
>
>
> SIERRA WIRELESS
>
> Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231 =
1100
>
> 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
>
> [M4]
>
> dwatkins@sierrawireless.com :: https://can01.safelinks.protection.outlook=
.com/?url=3Dhttp%3A%2F%2Fwww.sierrawireless.com%2F&amp;data=3D05%7C01%7Cdwa=
tkins%40sierrawireless.com%7C8154326625634f53c21308da3e88f58a%7C08059a4c248=
643dd89e33a747e0dcbe8%7C0%7C0%7C637891055218478725%7CUnknown%7CTWFpbGZsb3d8=
eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7=
C%7C%7C&amp;sdata=3DBeu3mEcOFIh3vQC1sN5kjjqaaE6DkHiNtYZVC3l%2FwbI%3D&amp;re=
served=3D0
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57189): https://can01.safelinks.protection.outlook.co=
m/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Fmessage%2F57189=
&amp;data=3D05%7C01%7Cdwatkins%40sierrawireless.com%7C8154326625634f53c2130=
8da3e88f58a%7C08059a4c248643dd89e33a747e0dcbe8%7C0%7C0%7C637891055218478725=
%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haW=
wiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DcqeOo7TdtIg6Vm6dIl4gZXorAIJE8%=
2Fn0rW%2Bn5cSipvA%3D&amp;reserved=3D0
> Mute This Topic: https://can01.safelinks.protection.outlook.com/?url=3Dht=
tps%3A%2F%2Flists.yoctoproject.org%2Fmt%2F91340574%2F3620601&amp;data=3D05%=
7C01%7Cdwatkins%40sierrawireless.com%7C8154326625634f53c21308da3e88f58a%7C0=
8059a4c248643dd89e33a747e0dcbe8%7C0%7C0%7C637891055218478725%7CUnknown%7CTW=
FpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3=
D%7C3000%7C%7C%7C&amp;sdata=3DJuhJWMjoFGpoS7zcBaRcYY816Zim7%2Bg7wTVXSKQAjWc=
%3D&amp;reserved=3D0
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://can01.safelinks.protection.outlook.com/?url=3Dhttps%=
3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Funsub&amp;data=3D05%7C01%7Cdwa=
tkins%40sierrawireless.com%7C8154326625634f53c21308da3e88f58a%7C08059a4c248=
643dd89e33a747e0dcbe8%7C0%7C0%7C637891055218478725%7CUnknown%7CTWFpbGZsb3d8=
eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7=
C%7C%7C&amp;sdata=3DavVa3Dv5zwkAAl7NTD6PUQZwOsISPN5cj2NJdw1TAl4%3D&amp;rese=
rved=3D0 [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--_000_CO6PR02MB8740F009EED1FAD0877132E9B2D69CO6PR02MB8740namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-CA" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi Steve,<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Awesome!&nbsp; Than=
ks, I will watch for it.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">&=
nbsp;</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">R=
egards,</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">&=
nbsp;</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">D=
arcy</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">&=
nbsp;</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">D=
arcy Watkins ::&nbsp;&nbsp;Senior Staff Engineer, Firmware</span></b><span =
lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">&=
nbsp;</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;co=
lor:red">SIERRA WIRELESS</span></b><span lang=3D"EN-US" style=3D"font-size:=
11.0pt;color:red"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">Dire=
ct&nbsp; +1 604 233 7989&nbsp; &nbsp;::&nbsp;&nbsp;Fax&nbsp;&nbsp;+1 604 23=
1 1109&nbsp; ::&nbsp;&nbsp;Main&nbsp;&nbsp;+1 604 231 1100<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">1381=
1 Wireless Way&nbsp; ::&nbsp;Richmond, BC Canada V6V 3A4<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">[M4]=
<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt"><a h=
ref=3D"mailto:dwatkins@sierrawireless.com"><span style=3D"color:#0563C1">dw=
atkins@sierrawireless.com</span></a>&nbsp;::&nbsp;<a href=3D"http://www.sie=
rrawireless.com/"><span style=3D"color:#0563C1">www.sierrawireless.com</spa=
n></a>
</span><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Steve Sakoman &lt;s=
teve@sakoman.com&gt;<br>
<b>Date: </b>Wednesday, May 25, 2022 at 12:58 PM<br>
<b>To: </b>Darcy Watkins &lt;dwatkins@sierrawireless.com&gt;<br>
<b>Cc: </b>yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject: </b>Re: [yocto] Kirkstone 4.0.1 - Exception: NameError: name 'j=
son_summary_name' is not defined<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">On Wed, May 25, 202=
2 at 9:34 AM Darcy Watkins<br>
&lt;dwatkins@sierrawireless.com&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; After sync-up with kirkstone 4.0.1, I get the following error=85<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Image CVE report stored in: /home/dwatkins/workspace/mgos/voyager1/bui=
ld/tmp/deploy/images/mg90/omg-supplement-mfwimages-mg90-20220525182226.root=
fs.cve<br>
&gt;<br>
&gt; ERROR: omg-supplement-mfwimages-1.0-r0 do_rootfs: Error executing a py=
thon function in exec_func_python() autogenerated:<br>
<br>
There is a fix for this issue on list for review, it should be<br>
available in the kirkstone branch later today.<br>
<br>
Steve<br>
<br>
&gt; The stack trace of python calls that resulted in this exception/failur=
e was:<br>
&gt;<br>
&gt; File: 'exec_func_python() autogenerated', lineno: 2, function: &lt;mod=
ule&gt;<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0001:<br>
&gt;<br>
&gt;&nbsp; *** 0002:cve_check_write_rootfs_manifest(d)<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0003:<br>
&gt;<br>
&gt; File: '/home/dwatkins/workspace/mgos/voyager1/upstream/yocto/poky/meta=
/classes/cve-check.bbclass', lineno: 213, function: cve_check_write_rootfs_=
manifest<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0209:<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0210:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; link_path =3D os.path.join(deploy_dir, &quot;%s.json&quot; % link_n=
ame)<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0211:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; manifest_path =3D d.getVar(&quot;CVE_CHECK_MANIFEST_JSON&quot;)<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0212:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; bb.note(&quot;Generating JSON CVE manifest&quot;)<br>
&gt;<br>
&gt;&nbsp; *** 0213:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; generate_jso=
n_report(json_summary_name, json_summary_link_name)<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0214:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; bb.plain(&quot;Image CVE JSON report stored in: %s&quot; % link_pat=
h)<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0215:}<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0216:<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0217:ROOTFS_POSTPROCESS_COMMAND:prepend =
=3D &quot;${@'cve_check_write_rootfs_manifest; ' if d.getVar('CVE_CHECK_CRE=
ATE_MANIFEST') =3D=3D '1' else ''}&quot;<br>
&gt;<br>
&gt; Exception: NameError: name 'json_summary_name' is not defined<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ERROR: Logfile of failure stored in: /home/dwatkins/workspace/mgos/voy=
ager1/build/tmp/work/mg90-poky-linux-gnueabi/omg-supplement-mfwimages/1.0-r=
0/temp/log.do_rootfs.16510<br>
&gt;<br>
&gt; ERROR: Task (/home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/rec=
ipes-images/images/omg-supplement-mfwimages.bb:do_rootfs) failed with exit =
code '1'<br>
&gt;<br>
&gt; NOTE: Tasks Summary: Attempted 8400 tasks of which 7718 didn't need to=
 be rerun and 1 failed.<br>
&gt;<br>
&gt; NOTE: Generating JSON CVE summary<br>
&gt;<br>
&gt; CVE report summary created at: /home/dwatkins/workspace/mgos/voyager1/=
build/tmp/log/cve/cve-summary.json<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; 645c157befa (Davide Gardenal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 2022-05-03 09:51:43 +0200 130)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; json_summary_link_name =3D os.path.join(cvelogpath, d.getVar(&quot;CVE=
_CHECK_SUMMARY_FILE_NAME_JSON&quot;))<br>
&gt;<br>
&gt; 645c157befa (Davide Gardenal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 2022-05-03 09:51:43 +0200 131)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; json_summary_name =3D os.path.join(cvelogpath, &quot;%s-%s.json&quot; =
% (cve_summary_name, timestamp))<br>
&gt;<br>
&gt; 645c157befa (Davide Gardenal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 2022-05-03 09:51:43 +0200 132)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; generate_json_report(json_summary_name, json_summary_link_name)<br>
&gt;<br>
&gt; 645c157befa (Davide Gardenal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 2022-05-03 09:51:43 +0200 133)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; bb.plain(&quot;CVE report summary created at: %s&quot; % json_summary_=
link_name)<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; 645c157befa (Davide Gardenal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 2022-05-03 09:51:43 +0200 210)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; link_path =3D os.path.join(deploy_dir, &quot;%s.json&quot; % link_name=
)<br>
&gt;<br>
&gt; 645c157befa (Davide Gardenal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 2022-05-03 09:51:43 +0200 211)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; manifest_path =3D d.getVar(&quot;CVE_CHECK_MANIFEST_JSON&quot;)<br>
&gt;<br>
&gt; 777f1d42b62 (Marta Rybczynska&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2022=
-03-29 14:54:31 +0200 212)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
bb.note(&quot;Generating JSON CVE manifest&quot;)<br>
&gt;<br>
&gt; 645c157befa (Davide Gardenal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 2022-05-03 09:51:43 +0200 213)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; generate_json_report(json_summary_name, json_summary_link_name)<br>
&gt;<br>
&gt; 645c157befa (Davide Gardenal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 2022-05-03 09:51:43 +0200 214)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; bb.plain(&quot;Image CVE JSON report stored in: %s&quot; % link_path)<=
br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I am not sure whether we need to locally setup the =93json_summary_nam=
e=94 in&nbsp; =93python cve_check_write_rootfs_manifest ()=94 like was done=
 inside =93python cve_save_summary_handler ()=94 or if something different =
was supposed to be passed to =93generate_json_report()=94
 instead.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Darcy<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Darcy Watkins ::&nbsp; Senior Staff Engineer, Firmware<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; SIERRA WIRELESS<br>
&gt;<br>
&gt; Direct&nbsp; +1 604 233 7989&nbsp;&nbsp; ::&nbsp; Fax&nbsp; +1 604 231=
 1109&nbsp; ::&nbsp; Main&nbsp; +1 604 231 1100<br>
&gt;<br>
&gt; 13811 Wireless Way&nbsp; :: Richmond, BC Canada V6V 3A4<br>
&gt;<br>
&gt; [M4]<br>
&gt;<br>
&gt; dwatkins@sierrawireless.com :: <a href=3D"https://can01.safelinks.prot=
ection.outlook.com/?url=3Dhttp%3A%2F%2Fwww.sierrawireless.com%2F&amp;amp;da=
ta=3D05%7C01%7Cdwatkins%40sierrawireless.com%7C8154326625634f53c21308da3e88=
f58a%7C08059a4c248643dd89e33a747e0dcbe8%7C0%7C0%7C637891055218478725%7CUnkn=
own%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXV=
CI6Mn0%3D%7C3000%7C%7C%7C&amp;amp;sdata=3DBeu3mEcOFIh3vQC1sN5kjjqaaE6DkHiNt=
YZVC3l%2FwbI%3D&amp;amp;reserved=3D0">
https://can01.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fwww.sier=
rawireless.com%2F&amp;amp;data=3D05%7C01%7Cdwatkins%40sierrawireless.com%7C=
8154326625634f53c21308da3e88f58a%7C08059a4c248643dd89e33a747e0dcbe8%7C0%7C0=
%7C637891055218478725%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV=
2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;amp;sdata=3DBeu3m=
EcOFIh3vQC1sN5kjjqaaE6DkHiNtYZVC3l%2FwbI%3D&amp;amp;reserved=3D0</a><br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#57189): <a href=3D"https://can01.safelinks.protect=
ion.outlook.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Fm=
essage%2F57189&amp;amp;data=3D05%7C01%7Cdwatkins%40sierrawireless.com%7C815=
4326625634f53c21308da3e88f58a%7C08059a4c248643dd89e33a747e0dcbe8%7C0%7C0%7C=
637891055218478725%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2lu=
MzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;amp;sdata=3DcqeOo7Td=
tIg6Vm6dIl4gZXorAIJE8%2Fn0rW%2Bn5cSipvA%3D&amp;amp;reserved=3D0">
https://can01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.y=
octoproject.org%2Fg%2Fyocto%2Fmessage%2F57189&amp;amp;data=3D05%7C01%7Cdwat=
kins%40sierrawireless.com%7C8154326625634f53c21308da3e88f58a%7C08059a4c2486=
43dd89e33a747e0dcbe8%7C0%7C0%7C637891055218478725%7CUnknown%7CTWFpbGZsb3d8e=
yJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C=
%7C%7C&amp;amp;sdata=3DcqeOo7TdtIg6Vm6dIl4gZXorAIJE8%2Fn0rW%2Bn5cSipvA%3D&a=
mp;amp;reserved=3D0</a><br>
&gt; Mute This Topic: <a href=3D"https://can01.safelinks.protection.outlook=
.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fmt%2F91340574%2F3620601&=
amp;amp;data=3D05%7C01%7Cdwatkins%40sierrawireless.com%7C8154326625634f53c2=
1308da3e88f58a%7C08059a4c248643dd89e33a747e0dcbe8%7C0%7C0%7C637891055218478=
725%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1=
haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;amp;sdata=3DJuhJWMjoFGpoS7zcBaRcYY8=
16Zim7%2Bg7wTVXSKQAjWc%3D&amp;amp;reserved=3D0">
https://can01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.y=
octoproject.org%2Fmt%2F91340574%2F3620601&amp;amp;data=3D05%7C01%7Cdwatkins=
%40sierrawireless.com%7C8154326625634f53c21308da3e88f58a%7C08059a4c248643dd=
89e33a747e0dcbe8%7C0%7C0%7C637891055218478725%7CUnknown%7CTWFpbGZsb3d8eyJWI=
joiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%=
7C&amp;amp;sdata=3DJuhJWMjoFGpoS7zcBaRcYY816Zim7%2Bg7wTVXSKQAjWc%3D&amp;amp=
;reserved=3D0</a><br>
&gt; Group Owner: yocto+owner@lists.yoctoproject.org<br>
&gt; Unsubscribe: <a href=3D"https://can01.safelinks.protection.outlook.com=
/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Funsub&amp;amp;da=
ta=3D05%7C01%7Cdwatkins%40sierrawireless.com%7C8154326625634f53c21308da3e88=
f58a%7C08059a4c248643dd89e33a747e0dcbe8%7C0%7C0%7C637891055218478725%7CUnkn=
own%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXV=
CI6Mn0%3D%7C3000%7C%7C%7C&amp;amp;sdata=3DavVa3Dv5zwkAAl7NTD6PUQZwOsISPN5cj=
2NJdw1TAl4%3D&amp;amp;reserved=3D0">
https://can01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.y=
octoproject.org%2Fg%2Fyocto%2Funsub&amp;amp;data=3D05%7C01%7Cdwatkins%40sie=
rrawireless.com%7C8154326625634f53c21308da3e88f58a%7C08059a4c248643dd89e33a=
747e0dcbe8%7C0%7C0%7C637891055218478725%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4=
wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp=
;amp;sdata=3DavVa3Dv5zwkAAl7NTD6PUQZwOsISPN5cj2NJdw1TAl4%3D&amp;amp;reserve=
d=3D0</a>
 [steve@sakoman.com]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_CO6PR02MB8740F009EED1FAD0877132E9B2D69CO6PR02MB8740namp_--


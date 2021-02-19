Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.5260.1613716514519159194
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 22:35:15 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=CRKFVeG3;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: qi.chen@windriver.com)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2086.outbound.protection.outlook.com [40.107.243.86])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9403638C06E6
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2021 06:35:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ml6o0rtR66jAUtNyvwyNjfUlPCR3hnRQfgdK2ajwe3B8t+RZi1MIFLxjuwW8Ddlp4InDKCWB+Cp0pJ/Vx7+gQW4101xg0Nch76D9Vig9sjndgJ0MPGYs+MvFzdI4I6QRBvQwFetSLiF96FE9K3xQjD9HQZwibBSXKs8oU/XmKS3GgHurwhV776f82kzxfT8NUyJPoITj/A57lSahc8jamvSaprQUY2EsZ4kfTu5pbyH0JKONl8SzEdku+1dirardwv4ML4UboXMtzKEyOLlz8gl3jXuEl8oRIc07st/Fwj6lx4QaSj6K0mCZdla3vhxCwf5W0fFoLcpfNW1Mtl+omQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QcKaDctQIxG/LNjDRNt7OaSR2VTzuIizry5ezPj6Ni0=;
 b=WB4qBP6aIcCOHJOeNjcXKQIeP261FVmyGrTIYaw2nKkOVEjINMFpHINzMUanDbs8srW2AYDBFcztg98JM/vO7T0GGH4fRDnX0B/o4oOHdoBpeoqL+QJq0rEgd16yuZoOF4bQYXsu0ZTkdhBvnnPDER9jS6hPu8pF+/GeCEc/WAmcEWMFVUUavK54Jd0ICRhl7HC5u/Dukf14QcT9L8C/BvoRRuMMAoHRpJW9guHKI8ifbyvgHNjLf0bX42YOzltH0nqqVyYaaaaKt+1bsrZM7n5ZaSlrwNWxtM1k2qkw5SYJhNUPXwJ+mZ6ZSSKvPu4pa68UvkNxz5UUE80LNGdsgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QcKaDctQIxG/LNjDRNt7OaSR2VTzuIizry5ezPj6Ni0=;
 b=CRKFVeG3hjGL05cZdOPghf8LSZcHYYANPeWjJwuAL2H1nlnd/E5JL3aofMWw0Eyz+l2q1uqEaLFroGKIW2jMHCb4dmsLBCxXwZlaPQmh1dDFdewklUBTG9Ro/uN+QiS6u8tq1TqOw2TCqtPhycxrrV8/Hc7ObpqNF6CBA/bY4Ps=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BYAPR11MB3480.namprd11.prod.outlook.com (2603:10b6:a03:79::27)
 by BYAPR11MB3109.namprd11.prod.outlook.com (2603:10b6:a03:8c::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.39; Fri, 19 Feb
 2021 06:35:12 +0000
Received: from BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::d9b:3f7c:136d:e60]) by BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::d9b:3f7c:136d:e60%7]) with mapi id 15.20.3846.042; Fri, 19 Feb 2021
 06:35:12 +0000
Subject: Re: [yocto] [ptest-runner][PATCH v2] Fix inappropriate ioctl when detaching tty
To: Anibal Limon <anibal.limon@linaro.org>,
 Tero Kinnunen <tero.kinnunen@vaisala.com>
References: <20200710054432.557157-1-tero.kinnunen@vaisala.com>
 <CA+_Aqit4UM=EH5ztSHbuVx84eHzoQN0NPU+ADEY7Sfi7=WpNDA@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
From: "Chen Qi" <Qi.Chen@windriver.com>
Message-ID: <ca58386c-51e1-770a-253d-4eb1c13441c5@windriver.com>
Date: Fri, 19 Feb 2021 14:44:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
In-Reply-To: <CA+_Aqit4UM=EH5ztSHbuVx84eHzoQN0NPU+ADEY7Sfi7=WpNDA@mail.gmail.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0051.apcprd04.prod.outlook.com
 (2603:1096:202:14::19) To BYAPR11MB3480.namprd11.prod.outlook.com
 (2603:10b6:a03:79::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.161] (60.247.85.82) by HK2PR04CA0051.apcprd04.prod.outlook.com (2603:1096:202:14::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.20.3868.27 via Frontend Transport; Fri, 19 Feb 2021 06:35:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3333b1cd-cc74-43ca-7748-08d8d4a08233
X-MS-TrafficTypeDiagnostic: BYAPR11MB3109:
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB31091F44B7229E2D76A9E279ED849@BYAPR11MB3109.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:83;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Na14OKMsADoSAVfIPSLalgEt70hKqBLJUEdSFDyun3MNAfdOewrkHGaao460MLaCIV+t6/bme762u+taUsP+pr8kW42a21/0qqq4ezJ31l9vfQGba1foR8x6pBBHePd84LOfY1kypAamL3LIc3+XjEHSNAkmwgh8+tFpmqguUWh6pmkM7cquhBSYnXQd099QHd+Q6IOdwdHG8lypX5CPTSJZ3Fq1vljpG4qbo2KIF9HS/1+RmUnvv3Ptj1Pzbuh9JYU+EawY0iNYo008Pv3YAG9pPSHSSl4/vbL69Mc3XLNii/WlSMjdRoU6axlglcHfD/v6BCNDYwUHGnvAVP9A5ciUx4vR76AYtlSDEDI2v8oYcK9h8KWDcwCBEAg2mE2D9AJiQVAISzgZ44GQBmYcIjSH8nuuIkgDdb6B2e6zzeUWkUtCT92SNamXvA0afbG+KeiG9nfFYdy+VuBiXazM7c5ZqMfWsB9i4gWWrdqejmuSVCeNdrPzRr+VLQdYM37+XuaKaRebSJ0y49I+T4RtTl8y+g4DEVwPXZaFh6dOGo6P75hjMap7RUQCfbT06LetAUh87/3NL8WFYhKjgxsKWEwRY9HcJUklizaarUk813OcFwCAlgzyWOjFcjfxvD2JJLjm79UBwcKCk/nXjcxXF6O+ULGiMtMlxfPgkhsKdgYTL3GckH0TNhUaegaY1qPBBS3FAHjysDTI64TyPRmNGw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3480.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(346002)(396003)(376002)(39850400004)(186003)(16526019)(83380400001)(86362001)(478600001)(16576012)(2906002)(6706004)(8936002)(6486002)(33964004)(8676002)(31686004)(316002)(966005)(4326008)(166002)(66946007)(26005)(66476007)(66556008)(6666004)(53546011)(956004)(5660300002)(31696002)(52116002)(36756003)(110136005)(2616005)(78286007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?dlNTVjJXaEVmZUFYTFBsOWphOW9UajEwSFA2bEtHVjVVak05Q1BCV3k5c1I1?=
 =?utf-8?B?dERxeVpYMjdFT2RubGo3R0lxTmFVVC9xYVFTanFWWXJwU1Ftb0lLaldJeThW?=
 =?utf-8?B?T0dXaTloOFZxLzZEZ3BldmVRQWlnU1VUYkIzcHhHZzcrbmVpb3k2d3RYLzhL?=
 =?utf-8?B?VzFLdUlteE9mRXRlWTlqdlgrSkRwYnp3Sy9RYnVJeGdSSDNWcnZUUXZlS1Bq?=
 =?utf-8?B?VGVqNnljZExJSjNvcExBQWVsTFA4Z1RGaTJhelhqaUxoKzAvNU9ianlrVmhi?=
 =?utf-8?B?WE1OYVFTUmJrY05qOEdSRXdyWjZXQmZlT3pISlBPZFhNQ3d2ajRteTlhTUxP?=
 =?utf-8?B?cDBVbkdZMU41dzZjbnFKRXMxZEw2V1I2YTV5WmdtZE9BTnJ1Wk5pYW43ODlq?=
 =?utf-8?B?MTNuME9GYzdSOWREcWdXVWpLa0hqUldtNE9xaGo5UVBWNHhkd0pPamc2S2h1?=
 =?utf-8?B?R1pzclhPMTM3aFA2VDdlbUJyMi94blUxaHZVTDdZejgwY2lITWtRWWdtSk5V?=
 =?utf-8?B?VUxCVVBSalppTmZPRFhjbkRKMWEvTkVRNEl1L1U5OTNPUkdFS2ZSeHBSdXZM?=
 =?utf-8?B?N3pQNGxoUC8zb2FNSlFCbjRmZnhNNEl4U1ZuSmFWNCtsbGpRdGNtZVJHYTVp?=
 =?utf-8?B?U1dSc1RVbU93STNYY09WbGwrQ2piYm9HYUYzeDN1RUk5enVWdFc4ZkpMWTl4?=
 =?utf-8?B?TnJERjhkVDM2bjZVckNSbklYNHVtUGoyVTA3VU9nYitHdFJvVnkwKzEvVktu?=
 =?utf-8?B?cDcydS93ZFIwWURaZUFSSGlaOHJvUVJ5WnRsYS9CU0FsT2M5eEIyZVVxUjFn?=
 =?utf-8?B?YTk1RkVaSHl1ZmZxYUdFKzliSldYVTJGejMwaTA4WGtrQ3VjVWRDY2FrdGdv?=
 =?utf-8?B?NTVwZWwzTVVTOUFSUDh4Y0YyZGNXVzJ3K1k1VEx0RmJ2S0dzWGU4WndiSkx6?=
 =?utf-8?B?cnl5V3BMd1JrNkFaVDhGcmVzazBvSmZtRURyUU1aT0tYYmZxcVRtTzRLUThs?=
 =?utf-8?B?a2MwSkRtN0tTTFNwMTlLQjA2RkI5UjdTMXJsaDVhTFpyWXNNUWJIV3RFNys1?=
 =?utf-8?B?U1NRa25PZTJ4clRMKzVQZElZbXJ2bmFCdVBWcDB6bkV2bmRoNnROaEc0bkhq?=
 =?utf-8?B?N1RJcVFBRUduVUtUbmV5eEdNVHFwMTRRa2FIQno2V3BxaU9DZkZ3VGdvVWhn?=
 =?utf-8?B?UWc3N25HM0p6WWdybEtIUE5ORkQveE5JRk5LdlZRT1NZL3dGVFQwRkRwWE1M?=
 =?utf-8?B?T2pnTFArRCtEUXp0ZXd2R3JiYTJpMnh5S3YxS1VQSmJyVzJXbVFoamlFdnlO?=
 =?utf-8?B?WnRXV01kcEZDZUhYYnJ1WFU2a2E1c29oSzAwVUJyYkF1Y0g0N3V6bjdxNG5z?=
 =?utf-8?B?b2tkSUlOemlmc2FYd282NExxb1hicUJoRVBTbjZsK0VXZmhGaURPSGk0bXFI?=
 =?utf-8?B?emdlWXJVTk1ySk1PYnZ0TjIrc3kyNG9PNC84V0JBV2RYV3RycWZHZFlXakVP?=
 =?utf-8?B?TU9kdkY3UGZ3bzNPWFBSMVJrNzZQcnU4WDBXSU9Fdm9oNENrN1VncldKTHFJ?=
 =?utf-8?B?UlM3d21YTmhvdHUvdDRBY0NDWDRmMEVOOHp1Z29wSW5YZ1BRd1JpWlpRRGEv?=
 =?utf-8?B?K3ZaZ1AyUHJyZDUvYVZQWEMwQzlxWndBREVFcDNyK1drZVhGQ0Z4K1hvS3Ji?=
 =?utf-8?B?S0xBeS94SVVqTmJwV1o0YmlZOHVRYnhrQzg1aWR0VjVxRzFLWUw2KzZwMDdz?=
 =?utf-8?Q?+i2yD+sWuWxOMMy0gZJsXpp+pkXgaqbXkO59XSu?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3333b1cd-cc74-43ca-7748-08d8d4a08233
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3480.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2021 06:35:12.0470
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sgoI0ff26esocIY55IxHncqwELKckWImJnDzUKTMrsyTuhiUyO5PWK+G4Ekys3eCjR5QHD6wpTSIJeI3QcOAMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3109
Content-Type: multipart/alternative;
 boundary="------------EEEC71DFF637EA8932AECAAA"

--------------EEEC71DFF637EA8932AECAAA
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Anibal,

The ptest-runner repo seems to be messed up.
This patch is no longer there, yet the SRCREV in ptest-runner recipe 
refers to this commit.

$ git show 834670317bd3f6e427e1ac461c07ada6b8936dfd
fatal: bad object 834670317bd3f6e427e1ac461c07ada6b8936dfd

Regards,
Chen Qi

On 07/14/2020 03:29 AM, Anibal Limon wrote:
> Applied, Thanks!.
>
> Anibal
>
> On Fri, 10 Jul 2020 at 00:44, Tero Kinnunen <tero.kinnunen@vaisala.com 
> <mailto:tero.kinnunen@vaisala.com>> wrote:
>
>     Fixes error
>
>         ERROR: Unable to detach from controlling tty, Inappropriate
>     ioctl for device
>
>     when running multiple ptests
>
>         ptest-runner a b
>
>     or when invoked over ssh single command, like
>
>         $ ssh localhost ptest-runner
>
>     For ssh case, fd 0 is not a tty. (isatty(0) is false).
>     When running multiple ptests, deattach for parent needs to be
>     done only once.
>
>     Signed-off-by: Tero Kinnunen <tero.kinnunen@vaisala.com
>     <mailto:tero.kinnunen@vaisala.com>>
>     ---
>      utils.c | 6 +++---
>      1 file changed, 3 insertions(+), 3 deletions(-)
>
>     diff --git a/utils.c b/utils.c
>     index a8ba190..a4e190e 100644
>     --- a/utils.c
>     +++ b/utils.c
>     @@ -437,6 +437,9 @@ run_ptests(struct ptest_list *head, const
>     struct ptest_options opts,
>                             break;
>                     }
>                     fprintf(fp, "START: %s\n", progname);
>     +               if (isatty(0) && ioctl(0, TIOCNOTTY) == -1) {
>     +                       fprintf(fp, "ERROR: Unable to detach from
>     controlling tty, %s\n", strerror(errno));
>     +               }
>                     PTEST_LIST_ITERATE_START(head, p)
>                             char *ptest_dir = strdup(p->run_ptest);
>                             if (ptest_dir == NULL) {
>     @@ -444,9 +447,6 @@ run_ptests(struct ptest_list *head, const
>     struct ptest_options opts,
>                                     break;
>                             }
>                             dirname(ptest_dir);
>     -                       if (ioctl(0, TIOCNOTTY) == -1) {
>     -                               fprintf(fp, "ERROR: Unable to
>     detach from controlling tty, %s\n", strerror(errno));
>     -                       }
>
>                             if ((pgid = getpgid(0)) == -1) {
>                                     fprintf(fp, "ERROR: getpgid()
>     failed, %s\n", strerror(errno));
>     -- 
>     2.25.1
>
>
>
> 



--------------EEEC71DFF637EA8932AECAAA
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">Hi Anibal,<br>
      <br>
      The ptest-runner repo seems to be messed up.<br>
      This patch is no longer there, yet the SRCREV in ptest-runner
      recipe refers to this commit.<br>
      <br>
      $ git show 834670317bd3f6e427e1ac461c07ada6b8936dfd<br>
      fatal: bad object 834670317bd3f6e427e1ac461c07ada6b8936dfd<br>
      <br>
      Regards,<br>
      Chen Qi<br>
      <br>
      On 07/14/2020 03:29 AM, Anibal Limon wrote:<br>
    </div>
    <blockquote cite=3D"mid:CA+_Aqit4UM=3DEH5ztSHbuVx84eHzoQN0NPU+ADEY7Sfi=
7=3DWpNDA@mail.gmail.com" type=3D"cite">
      
      <div dir=3D"ltr">Applied, Thanks!.
        <div><br>
        </div>
        <div>Anibal</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, 10 Jul 2020 at 00:44=
,
          Tero Kinnunen &lt;<a moz-do-not-send=3D"true" href=3D"mailto:ter=
o.kinnunen@vaisala.com">tero.kinnunen@vaisala.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">F=
ixes
          error<br>
          <br>
          &nbsp; &nbsp; ERROR: Unable to detach from controlling tty,
          Inappropriate ioctl for device<br>
          <br>
          when running multiple ptests<br>
          <br>
          &nbsp; &nbsp; ptest-runner a b<br>
          <br>
          or when invoked over ssh single command, like<br>
          <br>
          &nbsp; &nbsp; $ ssh localhost ptest-runner<br>
          <br>
          For ssh case, fd 0 is not a tty. (isatty(0) is false).<br>
          When running multiple ptests, deattach for parent needs to be<br=
>
          done only once.<br>
          <br>
          Signed-off-by: Tero Kinnunen &lt;<a moz-do-not-send=3D"true" hre=
f=3D"mailto:tero.kinnunen@vaisala.com" target=3D"_blank">tero.kinnunen@vais=
ala.com</a>&gt;<br>
          ---<br>
          &nbsp;utils.c | 6 +++---<br>
          &nbsp;1 file changed, 3 insertions(+), 3 deletions(-)<br>
          <br>
          diff --git a/utils.c b/utils.c<br>
          index a8ba190..a4e190e 100644<br>
          --- a/utils.c<br>
          +++ b/utils.c<br>
          @@ -437,6 +437,9 @@ run_ptests(struct ptest_list *head, const
          struct ptest_options opts,<br>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; break;<br>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fprintf(=
fp, &quot;START: %s\n&quot;, progname);<br>
          +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (isat=
ty(0) &amp;&amp; ioctl(0, TIOCNOTTY)
          =3D=3D -1) {<br>
          +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;fprintf(fp, &quot;ERROR: Unable to detach
          from controlling tty, %s\n&quot;, strerror(errno));<br>
          +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}<br>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PTEST_LI=
ST_ITERATE_START(head, p)<br>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; char *ptest_dir =3D
          strdup(p-&gt;run_ptest);<br>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; if (ptest_dir =3D=3D NULL) {<br>
          @@ -444,9 +447,6 @@ run_ptests(struct ptest_list *head, const
          struct ptest_options opts,<br>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; break;<br>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; }<br>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; dirname(ptest_dir);<br>
          -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;if (ioctl(0, TIOCNOTTY) =3D=3D -1) {<br>
          -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fprintf(fp, &quot;ERROR: Un=
able to
          detach from controlling tty, %s\n&quot;, strerror(errno));<br>
          -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;}<br>
          <br>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; if ((pgid =3D getpgid(0)) =3D=3D -1) {<br>
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fprintf(fp, &quot;ERROR: ge=
tpgid()
          failed, %s\n&quot;, strerror(errno));<br>
          -- <br>
          2.25.1<br>
          <br>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">
</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------EEEC71DFF637EA8932AECAAA--

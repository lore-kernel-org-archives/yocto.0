Received: from NAM04-CO1-obe.outbound.protection.outlook.com (NAM04-CO1-obe.outbound.protection.outlook.com [40.107.69.74])
 by mx.groups.io with SMTP id smtpd.web12.27043.1618193854707166575
 for <yocto@lists.yoctoproject.org>;
 Sun, 11 Apr 2021 19:17:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=eqpoNWEm;
 spf=pass (domain: windriver.com, ip: 40.107.69.74, mailfrom: qi.chen@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AoICHAlXXgwSpL6moX3GQZ9SHoXurgHKReur3TGtFH1xEWnHK2laXsWDtarW4RstGte5ezZNio2G7RKLgN4IOfiOlrOsMcFh1EWAOzIxddpuRJWMudrfFr/9XcvCYP1qXAl534FhdQIJ574tL/WlQZJorxfkmV/sAiXGSHmixG1ZdfAt2E9ezb0MIe/dJci6uUk5S/dXDwsYBxftuI0cg92Zw5QrEgEPptsz5tA/ouOsBEOitOQvUDykoo/kOaxCPfRbF8TBnAo93NTp2xWkDImA111RN2btJ8NG8SNqJ2NR3RZDfoeEv5PD53zOzhUvo4xsGhF8jcRMsrMYALujkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qcXkOVO/s5PgJET9jDCSmwCAMJh3qhpKp9Byyf78o3o=;
 b=D6IuDQiSQ4wWZxyGlrXBKfJJQz0D0QmGWTEJluvoZv1BHCkOYh6xLJlGm6EQ1cNICzvxAqYTxwLRS3Yi0FBbgJbcCUEMPPHLgO5EXygg5KAd3pOcHJmVGzEa4c9zeA34KNbux5XDqQ7sFOog3tQ2KWoxyiA8an9vDHOS43gWhBRlbzqMnvBPxqbuGop65VwFQmCQ3q05uPQB1NRyM0lyUsI0BLOomZyLmpEKXWfOtkMlTNoXTiog5CES/OfRZ+vXHfLpjDDaMjhB99hDMHeBfOJbxK8ZYWUCU/qXUIQrwGALFaq1f0/qkINRkcsbmDyos4CGaJSM21Xdv6xXGMjsfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qcXkOVO/s5PgJET9jDCSmwCAMJh3qhpKp9Byyf78o3o=;
 b=eqpoNWEmEyYtSlxRTAUlwg08b+cym6TJ411QKhgz0O1jdtoSbDKTOo2Rh3uibmWeDxd1Tm1wS4d3cBlqyHhkusE9CcZJBhUYLvS149L+05ndPQbS+MKZnjvfntV4nT3OjjA9MyuzeWZTlplJcTGjBHefG2l86zClNx8xA5Y/9l4=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BYAPR11MB3480.namprd11.prod.outlook.com (2603:10b6:a03:79::27)
 by SJ0PR11MB5069.namprd11.prod.outlook.com (2603:10b6:a03:2ad::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.21; Mon, 12 Apr
 2021 02:17:33 +0000
Received: from BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::5091:f32:2586:572b]) by BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::5091:f32:2586:572b%7]) with mapi id 15.20.3999.036; Mon, 12 Apr 2021
 02:17:33 +0000
Subject: Re: [yocto] bitbake controlling memory use
To: Gmane Admin <gley-yocto@m.gmane-mx.org>, yocto@lists.yoctoproject.org
References: <s4v495$bak$1@ciao.gmane.io>
From: "Chen Qi" <Qi.Chen@windriver.com>
Message-ID: <ad79e677-7f5d-5d21-d142-59e31dfd83ab@windriver.com>
Date: Mon, 12 Apr 2021 10:25:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
In-Reply-To: <s4v495$bak$1@ciao.gmane.io>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK0PR01CA0065.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::29) To BYAPR11MB3480.namprd11.prod.outlook.com
 (2603:10b6:a03:79::27)
Return-Path: Qi.Chen@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.161] (60.247.85.82) by HK0PR01CA0065.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.20.4020.17 via Frontend Transport; Mon, 12 Apr 2021 02:17:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2ad93544-676c-4fcb-8d44-08d8fd5921b6
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5069:
X-Microsoft-Antispam-PRVS: 
	<SJ0PR11MB50695154F120F39F1FD448ACED709@SJ0PR11MB5069.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	XMPQHxIVUeMc7FEx7elLvjVIRCeRDz9qOWIkcKtmzNKpl733hNx9G9w3ISBCO5t/KHfK0VG/+Vb6r02eRjfxQ3ATSIuYwIH+Sb5KtEAxZ9TkhzhYQiQ6u+GK59qJz+BraO49OcvhaMLTiPQL/WIiLqjvw9jaL/uU6SYBFPrj9G1pUcZGvw1GY8N+AbkLhIXMcCcjPPXYRmc/LXgrKNFQVBp173jN6QmHbAIzMaigBxp94s/ENuirI7mvb47BzaFZS3dKUF6cEIdDGh4KO6przqlGCOZI6eSBVga1Gq/9pnewFH3y/LMm/M+Z4ZjpR36ZklMoTlo+8wVEALxOCwFbx442HHqCH5b/GsIt2h18OI56EEUd0v06N5TtKOS4zavgHaRsRrJzW6SY8e4+OhyJrKBpkVHhvR3CJVmgkOZD/zT3uSMwkuZZsclgiWjTMyRayJmUGQbhJmkVUYx/VNCahTkJ7ymYk/+AtwqIfehnE02QnQ246EJ1tBXNiZkoz5J/f6gk2/rpjgFuYlhHknW6kuEvP5n9ukJz8oHTRlct2wJqeRyk5F+3Ww/xqAY5ptB3W513gq1KT4T8zwjSCiS/RoKpptcXhvSN8o7ksoAeQNzIj39qaNd6spXmxhtnXFJin5fZnZ5I4CuJx0AlTo7zmTptk7sz5ICrXSx0EDa2Z5yhE8OrvTVlNLoim5nDPhD+YJRNsSbnoqGpzerPJzhxzAPM3ZVZ8QQzYvLT5fskNjD1LQYkoRjD1mwcNzlAKF1ImAfY5CHHYwVIaYCB6uya1dymMCJTJopvZzUjEzLlHzg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3480.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(366004)(136003)(396003)(39840400004)(346002)(966005)(66946007)(478600001)(66476007)(2906002)(53546011)(8936002)(5660300002)(316002)(52116002)(31696002)(33964004)(6706004)(16576012)(66556008)(38350700002)(38100700002)(8676002)(86362001)(83380400001)(31686004)(36756003)(6666004)(2616005)(956004)(186003)(6486002)(166002)(16526019)(26005)(78286007)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?VGwrSU1zdDNrNDlrYzAyM0p4SkxXSlZrTUdsKzZ1VGowUURUQjRSb2czeXkw?=
 =?utf-8?B?Zk11K1VDTkoyT2hGdTUyNGZlMUpOVktsTzEzakd4eEd0M0ljQm83eW0vaHMx?=
 =?utf-8?B?bzFRREVkTHZiK1VNcjhCejdWcTladmRUTmZVbVlpRU11UHB6azhXQTFJcWQ3?=
 =?utf-8?B?QlBJNEUxVXZtMEQwdEE4SzhKZHpzeVM1THYwRkdnODV0RUhkaVdudzJpVGFD?=
 =?utf-8?B?WG9yS0h0QUs4VkdXL1NzMkVKb01udmpMRllpTDlJVS9RTWNqeTBPb2huVXpC?=
 =?utf-8?B?MlVKSGFOVXp3amNaaVZaVWVGSWhKejR4cWhac2cvdm5MZVY2YlJjNndCTU5N?=
 =?utf-8?B?bjBVTUpHd3pFbEUvQnJLaEdqcnZVMXQ5SFBmMnV0TFZYTUFQbTFVNEdudXFy?=
 =?utf-8?B?dUdRMm9sYmNEdmlucldZTGczcFVQUXF5ZDRnejdidVNTaCtmTzBUZ2ljTmJr?=
 =?utf-8?B?VlRpZzFSS0RnSG1MNnRSb2hzWXI2ZUdOT1FzWmdlcXJROGJ1SUVlNkplcGVJ?=
 =?utf-8?B?emcrMmhCUDB0akl1OUxFMVVCeHFXc1QxNUpVdW1VOHlaQ3Z5cEs4ZDFKWGQ5?=
 =?utf-8?B?ekZtTUREeXRKUWhLcTJWUXlaQlZFSGFib2FHOFYyWWZZQUtHYmgyRGJhOXB4?=
 =?utf-8?B?WUh0WStpUVg2LzhtcWtWNHBOM0hwaVN6Y3dvZkZreFEySlc1bUdqRWVKUktl?=
 =?utf-8?B?Qm5oL0t2aUJZRTlBRncyeVNFb25EOXdLUm14aTlGTU9iaVhDNnc1cXQ5d29y?=
 =?utf-8?B?VzNtaUt5bmNmSVFQTlQrN0ZHK0RKYjcyMzZYUXBTNWpJNFZROGVIeENEWEpV?=
 =?utf-8?B?aUYrZlgrRGFUTFNjVERyR1FtVXhpL0QrWDFIMW5GUTE1ZDNPSm9SS0RQazFU?=
 =?utf-8?B?ZTFKeGVRNE0yT3lWZDA1SzNwdGdpNGhVSDVGLzIweDZxNmxRRWlKTVZBUzJG?=
 =?utf-8?B?dFBYZDEyZ3lRaWlQRHBYcGdIZ0NiTnJzL0dvS1R3VkM5djMySFF4VEJwalhx?=
 =?utf-8?B?MVM1YXV6ajhwZFlyaTBNSnl2NW5Dcm1jTUZTc3Ara3MyUmozZ0NMV3JYUEJZ?=
 =?utf-8?B?ZVpqejZ2ZW1Mdkkzc24vbkRURE1IQTcrS3NxKzBLL2tuT3Bsc3NBa2JvZ0tu?=
 =?utf-8?B?Qm1BQWxKbkpJa3NDUlNnVXZ1dTNCN0JPRkQzQVJFRFJFRkh3emxvd2JPdXQ4?=
 =?utf-8?B?bDh4RHhYVFNVOERqUjB4aWg0VGd2eE1kTmtmYXFseGFLS2haeWJvN0xSUGxy?=
 =?utf-8?B?aUJZNjA3M2lMQU9hUEVSQWQrQzNJQXg3RVk3eklGUnAybGJjK1RicE80MHc0?=
 =?utf-8?B?UjM4VkhXRmJKZmFZTWRJR2JlbDQ4eW9iczBZOUhHT2V4L0ExemRBbDhHWTVB?=
 =?utf-8?B?NVI3cEdFL0pWWnhYVkwxTGZNd1BZaXE3V3BHb0NESW5oQWNrQkx0S29FSS9o?=
 =?utf-8?B?YUJLVkRHUjR6NEJSdU41ZWVwS0Y4aFR3TkhQWHAyKzA4aHdaL3F2KzdLZHBX?=
 =?utf-8?B?S0xtay9BYUswN0pBOTlWem1zRU1zQ1UwU0pPNmwyZWlWbjFDSHl5SDFDMDVO?=
 =?utf-8?B?NThZaEJtWUl6QnhMajloUGJWYnZxejR4Z25HK21NYzFGNmsyMmVwbkRvTlRt?=
 =?utf-8?B?b3NZdjEzbkt4UklPOVN3NWl0WlJNODZnRk5JYnE2cmhYeG5RRThXUFdOR0tQ?=
 =?utf-8?B?bFNJYkR2V1VXZkt6c0J5YWhXZDdRK3ZudnNHakJjQTlKZHZTYlREcjNqMFZY?=
 =?utf-8?Q?yKTJinF5BQWY5UE1xBLTb6b+QehDfne0ItzQhUk?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ad93544-676c-4fcb-8d44-08d8fd5921b6
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3480.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2021 02:17:33.4942
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zVjgx2VfizjuyaovMTUm8OALvux12fMfi5+n7k0KwgIq5heeBiEMuiof9maeqNVJaOgkaZckSX963zKkby2Etw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5069
Content-Type: multipart/alternative;
 boundary="------------4FE141F87B3AB5160CCFC9ED"

--------------4FE141F87B3AB5160CCFC9ED
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I think you write a script to do all the WATCH-STOP-CONTINUE stuff.
e.g.
memwatch bitbake core-image-minimal
Options could be added.
e.g.
memwatch --interval 5 --logfile test.log bitbake core-image-minimal

This script first becomes a session leader, then forks to start the 
'bitbake' command as its child process.
Then, every several seconds (say 10s by default), it checks the current 
memory usage, and according to its policy, determines whether to 
stop/continue some process or not.

For stopping the process, you can first get all its child process by 
simply using the 'ps' command.
e.g.
$ ps o vsize,comm,pid -s 28303 | sort -n -r
317284 emacs           12883
  28912 ps              36302
  26248 sort            36303
  21432 man             24797
  17992 bash            28303
   9852 pager           24807
    VSZ COMMAND           PID

Then skip the bitbake processes, stop the first one that uses the 
largest memory, record its PID.

For continuing processes, just start it according to the records. Maybe 
using FILO by default?

Best Regards,
Chen Qi

On 04/11/2021 11:23 PM, Gmane Admin wrote:
> My build machine has 8 cores + HT so bitbake enthusiastically assumes 
> 16. However I have (only?) 16GB of RAM (+24GB swap space).
>
> 16GB of RAM has always been more then enough with 4 core + HT, but now 
> building certain recipes (nodejs, but rust will probably do it as 
> well) eats up more memory then there actually is RAM causing excessive 
> swapping.
>
> In fact the swapping is so excessive that just this single recipe 
> determines largely the total image build time. However restricting 
> bitbake (or actually parallel make) to use only 4 cores + HT sounds 
> also like a waste.
>
> I know this has been looked at in the past, but I think it needs 
> fundamental resolving (other then, hé, why not add just another stick 
> of memory).
>
> What I do manually when I run into swapping so bad my desktop becomes 
> unresponsive is ssh from another machine and then stop (not kill) the 
> processes that use the most memory.
>
> These then get swapped out, but not back in, allowing the remaining 
> tasks to complete without swapping. Then when sufficient memory 
> becomes free again I continue the stopped processes.
>
> Isn't this something that could be added to bitbake to automate using 
> memory efficiently?
>
>
>
> 
>


--------------4FE141F87B3AB5160CCFC9ED
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">I think you write a script to do all
      the WATCH-STOP-CONTINUE stuff.<br>
      e.g.<br>
      memwatch bitbake core-image-minimal<br>
      Options could be added.<br>
      e.g.<br>
      memwatch --interval 5 --logfile test.log bitbake
      core-image-minimal<br>
      <br>
      This script first becomes a session leader, then forks to start
      the 'bitbake' command as its child process.<br>
      Then, every several seconds (say 10s by default), it checks the
      current memory usage, and according to its policy, determines
      whether to stop/continue some process or not.<br>
      <br>
      For stopping the process, you can first get all its child process
      by simply using the 'ps' command.<br>
      e.g.<br>
      $ ps o vsize,comm,pid -s 28303 | sort -n -r<br>
      317284 emacs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12883<br>
      &nbsp;28912 ps&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 36302<br>
      &nbsp;26248 sort&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 36303<br>
      &nbsp;21432 man&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 24797<br>
      &nbsp;17992 bash&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 28303<br>
      &nbsp; 9852 pager&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 24807<br>
      &nbsp;&nbsp; VSZ COMMAND&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PID<br>
      <br>
      Then skip the bitbake processes, stop the first one that uses the
      largest memory, record its PID.<br>
      <br>
      For continuing processes, just start it according to the records.
      Maybe using FILO by default?<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 04/11/2021 11:23 PM, Gmane Admin wrote:<br>
    </div>
    <blockquote cite="mid:s4v495$bak$1@ciao.gmane.io" type="cite">My
      build machine has 8 cores + HT so bitbake enthusiastically assumes
      16. However I have (only?) 16GB of RAM (+24GB swap space).
      <br>
      <br>
      16GB of RAM has always been more then enough with 4 core + HT, but
      now building certain recipes (nodejs, but rust will probably do it
      as well) eats up more memory then there actually is RAM causing
      excessive swapping.
      <br>
      <br>
      In fact the swapping is so excessive that just this single recipe
      determines largely the total image build time. However restricting
      bitbake (or actually parallel make) to use only 4 cores + HT
      sounds also like a waste.
      <br>
      <br>
      I know this has been looked at in the past, but I think it needs
      fundamental resolving (other then, hé, why not add just another
      stick of memory).
      <br>
      <br>
      What I do manually when I run into swapping so bad my desktop
      becomes unresponsive is ssh from another machine and then stop
      (not kill) the processes that use the most memory.
      <br>
      <br>
      These then get swapped out, but not back in, allowing the
      remaining tasks to complete without swapping. Then when sufficient
      memory becomes free again I continue the stopped processes.
      <br>
      <br>
      Isn't this something that could be added to bitbake to automate
      using memory efficiently?
      <br>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">


</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------4FE141F87B3AB5160CCFC9ED--

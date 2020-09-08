Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.11305.1599529516232328982
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 18:45:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=bqgte/dR;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: qi.chen@windriver.com)
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (mail-eopbgr700059.outbound.protection.outlook.com [40.107.70.59])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 05BBD38C1129
	for <yocto@yoctoproject.org>; Mon,  7 Sep 2020 18:45:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B8VduhuLUcpjvt1+tX8SgybgJ3iaH2BkQTJoMhZFFr9D6o2Neevv8ZNwSK0ZLcAE+C7hXLr/ruBW/CjVhtJazY5EQ+ysWzYkljxv8KwGC4Qwe0o+uhzwFbuzrFgQOXp3kFBF6Y1M5IdMdaz83pxYjJW1mJODyJlKQrmfvb0Qg64Z60eQA4JwQL5ZZWmlTdVSi5na4syVwyCwn1Ax6HTa/VdS8Cqh2EMtpusnon+LzhVNuc0xnERi58mZHkn1/VpMmpbLFR965toS3exlVy/b9EtGgrMs/UQa5CLhIQDnciBP30axuyvHzDSw0z54fIoP/V7k+hOc1HYfq4wku9ykmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XwMpfJE463Mn3CQl+czbApzVP7EsqNDCx75FFGskmqA=;
 b=CukeGfbzAow1/lVHugjqpF+IZX/KIdUHppN0t4S4XwjHEz8ub6zzNFC5AHTwFSiPKwnjGyO6a9UrGmCQT2hBHl0Ol8i3G4nTHLshl/oKbT4/kfoubOrNJpPWOfzD4MQuJJ3f2KqyT+n9C7GqFyaOU7HZ+wu+ddJASRSsrA4ZLbUT9T51fcx+Txma2AOuRTnWLq4FZQ/ZmyHrlMp2AdJPJ7fZS5Ow2FIH0uqXVCoUxQeOeIPF0cUykgzAX9LKcY8cbonHgwMQsetr7UAZCmagp5IUeu3N5rs5OJkYmreNTDoWua8xOoI7+IiJXRnN4ShtUMPYrgDmf93QttfOn2uizQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XwMpfJE463Mn3CQl+czbApzVP7EsqNDCx75FFGskmqA=;
 b=bqgte/dRIxHv8Mg/uPuTcH+Q6hYfCNCIuJVs4/o6lxFNn1Y+GM1ymeRWjlkkzj8FVpjGCUoHBkDgVBlx4gnK+IwWWC7zJM6bZIQfyHy8+YwvGiogF7cOf8fvenQ55ca9pPFsRN1GQ6iTP6nxN5CpzCR8dW/+ZVa3DbccUZ5kq3g=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BYAPR11MB3480.namprd11.prod.outlook.com (2603:10b6:a03:79::27)
 by BYAPR11MB3302.namprd11.prod.outlook.com (2603:10b6:a03:7b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Tue, 8 Sep
 2020 01:45:12 +0000
Received: from BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::6da1:47ca:a4e9:92e3]) by BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::6da1:47ca:a4e9:92e3%5]) with mapi id 15.20.3348.017; Tue, 8 Sep 2020
 01:45:12 +0000
Subject: Re: [yocto][meta-security][PATCH] dhcp: remove bbappend file
To: akuster808 <akuster808@gmail.com>, yocto@yoctoproject.org
References: <20200907051423.80188-1-Qi.Chen@windriver.com>
 <10476134-b3c5-58f4-17aa-020a2a70996e@gmail.com>
From: "Chen Qi" <Qi.Chen@windriver.com>
Message-ID: <65b6ed57-aa15-15c6-697a-102a271b35e2@windriver.com>
Date: Tue, 8 Sep 2020 09:50:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
In-Reply-To: <10476134-b3c5-58f4-17aa-020a2a70996e@gmail.com>
X-ClientProxiedBy: HK2PR04CA0069.apcprd04.prod.outlook.com
 (2603:1096:202:15::13) To BYAPR11MB3480.namprd11.prod.outlook.com
 (2603:10b6:a03:79::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.161] (60.247.85.82) by HK2PR04CA0069.apcprd04.prod.outlook.com (2603:1096:202:15::13) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.20.3348.16 via Frontend Transport; Tue, 8 Sep 2020 01:45:11 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 40dd8636-a3f0-4978-0497-08d85398d358
X-MS-TrafficTypeDiagnostic: BYAPR11MB3302:
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB3302502D488065467F4AD178ED290@BYAPR11MB3302.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LVR5WwKw4IYt5B4L6a4SkAyrPN02ArwV3tfbAWuvQpSDWB3hWCzKLFNYyftF2dIev/d8eFsPwTEdqKdz1+hwcDOffpYfyjBWNA5sxke3uycJWLMIklEsDF4nmtBcnjEiTbG60uaUj9hYPfNGjS9vKWyCwsqf/uFcegmM6iDV3tM/PlEpg1wV2pgKsce37MLlITHNHrIaL9ANcf3VCstoKiR2vYs/WdvC8u8Kybf+X1T2y3nyWO0razzY5toH91V5vp3ry0RvO1BPj1+kaaoXPWn5+wJ+swpnxYpKol6RTM9s1Dym8DXqHHM7/f9JTQ+KRn72LyrN9zemclS476mZ6HyvMy3Eja47uKlWiI3RkWQ8ob2741IF8tfjaf9QeLZ8O4CwuT9nI3Zex3fZ/LfJls8+40x+QFttiHp/Em1efUZgjEQIF54LOuGG0uUBqgyttPwmXx93CkuR/o018Gn3A29L48bgQMOLtB1IT6rWeVs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3480.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(346002)(39850400004)(396003)(376002)(83380400001)(6666004)(966005)(86362001)(8936002)(36756003)(2906002)(66946007)(31686004)(16576012)(186003)(66476007)(31696002)(26005)(16526019)(2616005)(66556008)(6706004)(956004)(15650500001)(53546011)(316002)(52116002)(5660300002)(478600001)(6486002)(8676002)(78286006)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	DjuWV3u/KVbhZlEtF7l5E+gFAipC0r1ilasUClJEUO5a0zP85rpOJc67CEjAFi3udSu7J5QpWKzgh4WHTySdqg/rQHwjvfPavwrBFKtiji+5TK5DQBbAJgedcEqxRxSGH57Z8BY5nNwVzdgjOVJCHSs/njrF0naNsen67DLLLvfmvEhc50nPbINZmHLnj1wOeFJyAiIBCHPGk9B+U5/R6hNlQBecxEtxvDvnGkdeAVgLKqqenZBMXmUmz9GQT5uaTI7S17Mz3x64LyqxDZEmOgN/5KKzoNYMAHP3EgIeblLkjAHQoX1eWNY0W7gbfwPvI8TbBZ1opaJ690VzTsr3MKzJFxDpv0LVXihwVx9gxA6qd9ScSBAS0m9yY1iN2+WKbFgPCICbylBKG1pPIxdHaUdnE12UXWoj1Rq5yz88G7vqV6TxmPjtTgFrMlxZMQvSIQM+yJgSzVyo6DpfVn12tDqYGEZ7OAee6zNZU0giUcyCet1cIY6M+EIh5aY9VuG8h7xZFP6/ZuU5N9rpUmewXxZUf6tJW5iO4FJF8HxtDbtoXxR72rjt6buc2Sw3C8h4UA3p4Cr0588G7c1hXny5mdKePYDHff6Ns7n2jlAKbyyJX5k8wt7zKp+2SuOhYph3f7fXjiw9aQCMTq5FsyA9KA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40dd8636-a3f0-4978-0497-08d85398d358
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3480.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2020 01:45:12.5236
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WsVYEoeSzaMa8QbA1ZJKzzL2AcfZnYxpbjWl2WsvhxaY8ccpfc5nJvRF6swsF656Dj+0kSajRhohh5a5lk3bSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3302
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/08/2020 12:46 AM, akuster808 wrote:
> This patch set is for meta-selinux
>
> -armin

Thanks. I've sent out a new patch, changing the title to use 'meta-selinux'.

Regards,
Chen Qi

> On 9/6/20 10:14 PM, Chen Qi wrote:
>> dhcp has been removed, thus removing its bbappend file.
>>
>> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
>> ---
>>   recipes-connectivity/dhcp/dhcp_%.bbappend   |  1 -
>>   recipes-connectivity/dhcp/dhcp_selinux.inc  |  3 --
>>   recipes-connectivity/dhcp/files/init-server | 52 ---------------------
>>   3 files changed, 56 deletions(-)
>>   delete mode 100644 recipes-connectivity/dhcp/dhcp_%.bbappend
>>   delete mode 100644 recipes-connectivity/dhcp/dhcp_selinux.inc
>>   delete mode 100644 recipes-connectivity/dhcp/files/init-server
>>
>> diff --git a/recipes-connectivity/dhcp/dhcp_%.bbappend b/recipes-connectivity/dhcp/dhcp_%.bbappend
>> deleted file mode 100644
>> index 7719d3b..0000000
>> --- a/recipes-connectivity/dhcp/dhcp_%.bbappend
>> +++ /dev/null
>> @@ -1 +0,0 @@
>> -require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
>> diff --git a/recipes-connectivity/dhcp/dhcp_selinux.inc b/recipes-connectivity/dhcp/dhcp_selinux.inc
>> deleted file mode 100644
>> index 08389f1..0000000
>> --- a/recipes-connectivity/dhcp/dhcp_selinux.inc
>> +++ /dev/null
>> @@ -1,3 +0,0 @@
>> -inherit selinux
>> -
>> -FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>> diff --git a/recipes-connectivity/dhcp/files/init-server b/recipes-connectivity/dhcp/files/init-server
>> deleted file mode 100644
>> index a0e901a..0000000
>> --- a/recipes-connectivity/dhcp/files/init-server
>> +++ /dev/null
>> @@ -1,52 +0,0 @@
>> -#!/bin/sh
>> -#
>> -# $Id: dhcp3-server.init.d,v 1.4 2003/07/13 19:12:41 mdz Exp $
>> -#
>> -
>> -test -f /usr/sbin/dhcpd || exit 0
>> -
>> -# It is not safe to start if we don't have a default configuration...
>> -if [ ! -f /etc/default/dhcp-server ]; then
>> -	echo "/etc/default/dhcp-server does not exist! - Aborting..."
>> -	exit 0
>> -fi
>> -
>> -# Read init script configuration (so far only interfaces the daemon
>> -# should listen on.)
>> -. /etc/default/dhcp-server
>> -
>> -# Restorecon for /var/lib/dhcp/{dhcpd.leases,dhcpd6.leases}
>> -restorecon_dhcpd_leases(){
>> -	test ! -x /sbin/restorecon || for x in dhcpd.leases dhcpd6.leases; do
>> -		[ -f /var/lib/dhcp/$x ] && /sbin/restorecon -F /var/lib/dhcp/$x
>> -	done
>> -}
>> -
>> -case "$1" in
>> -	start)
>> -		echo -n "Starting DHCP server: "
>> -		test -d /var/lib/dhcp/ || mkdir -p /var/lib/dhcp/
>> -		test -f /var/lib/dhcp/dhcpd.leases || touch /var/lib/dhcp/dhcpd.leases	
>> -		restorecon_dhcpd_leases
>> -		start-stop-daemon -S -x /usr/sbin/dhcpd -- -q $INTERFACES -user dhcp -group dhcp
>> -		echo "."
>> -		;;
>> -	stop)
>> -		echo -n "Stopping DHCP server: dhcpd3"
>> -		start-stop-daemon -K -x /usr/sbin/dhcpd
>> -		echo "."
>> -		;;
>> -	restart | force-reload)
>> -		$0 stop
>> -		sleep 2
>> -		$0 start
>> -		if [ "$?" != "0" ]; then
>> -			exit 1
>> -		fi
>> -		;;
>> -	*)
>> -		echo "Usage: /etc/init.d/dhcp-server {start|stop|restart|force-reload}"
>> -		exit 1
>> -esac
>> -
>> -exit 0
>>
>> 
>


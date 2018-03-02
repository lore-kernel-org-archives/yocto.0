Return-Path: <pn@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2DB5E00EE7; Fri,  2 Mar 2018 03:39:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 147E5E00E84
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2018 03:38:13 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3zt6XB4nShz1r4x7;
	Fri,  2 Mar 2018 12:29:30 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 3zt6XB4Qz4z1qqkM;
	Fri,  2 Mar 2018 12:29:30 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id EOUxDz0yypwt; Fri,  2 Mar 2018 12:29:26 +0100 (CET)
X-Auth-Info: MXMJ7YKRXa8ZYLOg+s4l7x3aDaCMPkX3lnYReinQrCk=
Received: from antares.denx.de (unknown [62.91.23.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Fri,  2 Mar 2018 12:29:26 +0100 (CET)
To: bitbake-devel@lists.openembedded.org, yocto@yoctoproject.org
From: Parthiban Nallathambi <pn@denx.de>
Message-ID: <1c9ddeef-cae3-20b7-964b-768f999c7803@denx.de>
Date: Fri, 2 Mar 2018 12:29:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
Subject: Yocto: Add custom user to custom group in bitbake recipe
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
X-List-Received-Date: Fri, 02 Mar 2018 11:39:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello All,

I have created a custom group e.g "grp1" in my application recipe say 
"app.bb".

GROUPADD_PARAM_${PN} = "grp1"

I am trying add my custom user e.g: "user1" to this group "grp1" in 
"space.bb".

USERADD_PARAM_${PN} = "-d ${localstatedir}/lib/space/ -s /bin/false -G 
grp1 -U user1"

The useradd command failed saying the "useradd: group 'grp1' does not 
exist". I have also tried adding DEPENDS_${PN} = "app" in space.bb, but 
it doesn't help.

How can I add my custom user to my custom group in bitbake recipe?

Question in Stackoverflow: 
https://stackoverflow.com/questions/49068076/yocto-add-custom-user-to-custom-group

-- 
Thanks,
Parthiban Nallathambi

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de


Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7854EE0073D; Mon, 25 Jul 2016 05:22:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B0A7E006C7
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 05:22:52 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id i5so154037427wmg.0
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 05:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=1P8NAUxfPL446RQgf2dxpCFVp+j7ZrUnTHTWAjbqRLk=;
	b=BU8NWz11AScagD+MgKzXSSnJh2/JH2zWr/t+wmMIutj9BZs2FK9wi8GlJ7djQB05SN
	lQ1bxoLeANVbTD05ZnnZEJtcE8e8PSzObVfwDLMklaSaKfoa9hUA0IPLuEDJILEU7/i3
	iJes51uzun2YGq2dxOPmmrYtqLghd/KCYcY4obM/oYF5ggRIAX++cHBe6Pf44WbTuJrS
	6N6ISaBJjGLmXcgm/cX6ZrsqCDMt1hqeQN6Z/9hlCIaJoHPr3DHDfhxK/7IRYUxzkIYY
	Yhfhbvo5PSZrPh+2Vdf0Owv56wBtxYZu/lN3J/g5CGrnAe84Xjh0n6j/aSTTSN0xpSGP
	t/+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=1P8NAUxfPL446RQgf2dxpCFVp+j7ZrUnTHTWAjbqRLk=;
	b=Sd0u07h/FrmlP0Z/Y2V78kenofrsFraO32ITuc2UMpUG/NSCPoHbZJLCS/oWfweFHt
	OUf1ijsDuSmmuk/dyDkJokZ5ebk+RIV5kMeBG5wROt2IeZ7JBvPJZO1ZR9nU33skOo7H
	6L/2oQ7Zw3IQ2d8oK82512gZVkNcfNDR+APBMfIF3HW3USK2snJqkcj0qvR0vgGm80yl
	HFZkXwPUYjCqm60ZsjmicURPaVTR7bLK3Bb4fUXxFC5bJjOP+O7/FC2kdEnqxovU7DCr
	Ighiz0ox2mV0pUkDrCve/jJJJRbxlw1SQsRVN66RXYzTrXeiCqXH2A2gJ23aIazWWff0
	x32w==
X-Gm-Message-State: AEkoousDzQt2oZXo4xWcR01LMEINXD9ICnu96NR/MZuqQGjnAHuW9KxIpduyTYTDXnx5MQ==
X-Received: by 10.28.27.211 with SMTP id b202mr20998005wmb.12.1469449371653;
	Mon, 25 Jul 2016 05:22:51 -0700 (PDT)
Received: from [192.168.2.170] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114])
	by smtp.gmail.com with ESMTPSA id 17sm27246407wmf.6.2016.07.25.05.22.50
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Jul 2016 05:22:51 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <b44125f5-8305-978c-2282-01e54add131d@elfin.de>
Date: Mon, 25 Jul 2016 14:22:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
Subject: changing ownership of a file in a package
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
X-List-Received-Date: Mon, 25 Jul 2016 12:22:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I have a package where I want to install some files into a home 
directory of a user "testuser". I create a user in my image bb file 
using "extrausers".

My problem is that I'm unable to change ownership of those files from 
root to the testuser.

Simple "chown testuser:testuser -R /home/testuser" inside do_install 
task makes those files being owned by "nobody".

How can I manage ownership of those files properly?



The recipe is like so:

DESCRIPTION = "Files installed in testuser user home directory"
LICENSE = "CLOSED"

SRC_URI += " \
            file://authorized_keys \
            file://bash_profile \
            file://bashrc \
            "

do_install(){
     install -d ${D}/home/testuser/
     install -m 0644 ${WORKDIR}/bash_profile 
${D}/home/testuser/.bash_profile
     install -m 0644 ${WORKDIR}/bashrc ${D}/home/testuser/.bashrc

     install -d ${D}/home/testuser/.ssh
     install -m 0644 ${WORKDIR}/authorized_keys ${D}/home/testuser/.ssh/
}

FILES_${PN} = "/home/testuser"


Thanks,

Piotr



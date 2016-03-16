Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8F54E0083D; Wed, 16 Mar 2016 01:25:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [178.22.154.198 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1221 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 Mar 2016 01:25:17 PDT
Received: from smtp.laposte.net (smtpoutz298.laposte.net [178.22.154.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38C7FE007F2
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 01:25:17 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout010 (Postfix) with ESMTP id F3A3045E259
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 09:04:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail1;
	t=1458115494; bh=UbfpYlCzP3ikqLLqzpB59FCV1GysOu0v6hZtGSP/J+0=;
	h=Subject:References:To:From:Date:In-Reply-To;
	b=opEtHW07EYK+57xenpOdiXwO9im8xippICIcfeArQfDgEUAT6AJ14E5AsohVXKnpG
	Vk3kTfpZFvG9SM0482uaLs0m82qpzCy9UlLLioT9Ff1pKxUqEVHsxdTZ88ewLm9POI
	sZ4jE6VjBomU6gfNq1XmlIR8RtioSiy8kqs1zbo7p+OlrYLfJbeckj5j/fcRcq45XA
	d7QQb4oLj/Us0w5X+IzJfApa8OHVdeqcXN7kzSc6xpAD4Fffe1P7r8vu0crSkvC5By
	e7xri035zfyNiZ10XUQ1GRl1C5MOjIXz6e+4A5TCUbdPsSZsAdw27s+kb0QNw0jUlz
	ui3fz+RMPIXqg==
Received: from lpn-prd-vrin004 (lpn-prd-vrin004.prosodie [10.128.63.5])
	by lpn-prd-vrout010 (Postfix) with ESMTP id ED00745E257
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 09:04:50 +0100 (CET)
Received: from lpn-prd-vrin004 (localhost [127.0.0.1])
	by lpn-prd-vrin004 (Postfix) with ESMTP id DD82670E244
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 09:04:50 +0100 (CET)
Received: from [192.168.1.45] (ARennes-654-1-113-87.w2-13.abo.wanadoo.fr
	[2.13.96.87])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by lpn-prd-vrin004 (Postfix) with ESMTPSA id 82AD470E23F
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 09:04:50 +0100 (CET)
References: <op.yec9f2hdmnlnty@pc-mls.ecafaros.local>
To: yocto@yoctoproject.org
From: idealsim <idealsim@laposte.net>
X-Forwarded-Message-Id: <op.yec9f2hdmnlnty@pc-mls.ecafaros.local>
Message-ID: <56E913A0.2030603@laposte.net>
Date: Wed, 16 Mar 2016 09:04:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <op.yec9f2hdmnlnty@pc-mls.ecafaros.local>
X-VR-SrcIP: 2.13.96.87
X-VR-FullState: 0
X-VR-Score: 0
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeekkedrtddugdduvdehucetufdoteggodetrfdotffvucfrrhho
X-VR-Cause-2: fhhilhgvmecunfetrffquffvgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefufhfvhffk
X-VR-Cause-3: ffgfgggjtgfgsehtjegrtddtfeelnecuhfhrohhmpehiuggvrghlshhimhcuoehiuggvrghlshhimhes
X-VR-Cause-4: lhgrphhoshhtvgdrnhgvtheqnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucfkphepvddrudef
X-VR-Cause-5: rdeliedrkeejnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghloheplgduledvrdduieek
X-VR-Cause-6: rddurdeghegnpdhinhgvthepvddrudefrdeliedrkeejpdhmrghilhhfrhhomhepihguvggrlhhsihhm
X-VR-Cause-7: sehlrghpohhsthgvrdhnvghtpdhrtghpthhtohephihotghtoheshihotghtohhprhhojhgvtghtrdho
X-VR-Cause-8: rhhg
X-VR-AvState: No
X-VR-State: 0
Subject: Qt5.6 new modules
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
X-List-Received-Date: Wed, 16 Mar 2016 08:25:19 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hi, we have build an image for udoo neo from meta-qt5 jansa/master-5.6 
and works fine (thanks to Christian Ege ). The problem is that I'm 
looking for https://github.com/qtproject/qtquickcontrols2 and 
https://github.com/qtproject/qtserialbus. My question is how we can add 
this modules to our build ?  I add this to our local.conf :

     "qtquickcontrols2 \
      qtserialbus \
     "
But this modules don't have buildable providers ! If someone can help to 
said me how to proceed ...

regards,

Mickael




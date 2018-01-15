Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB7ABE00DD1; Mon, 15 Jan 2018 07:12:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [217.72.192.74 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B0BEE00AF2
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 07:12:03 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue105
	[212.227.15.179]) with ESMTPSA (Nemesis) id 0MMnOB-1eUFkE464l-008c97
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 16:12:02 +0100
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Mon, 15 Jan 2018 15:12:01 -0000
Organization: LN Systems Limited
Message-ID: <092e01d38e13$32290bf0$967b23d0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdOOEQmYw1H2W2CBSEmaGEV0aktYyw==
X-Provags-ID: V03:K0:gu+5Opjhjj9gYSOzv1Psa6W96xBo8q6aFKtJjxZpzfQZBtmmDrR
	kiQRbHDVl31SVs+G33Xlw7O0VwmTzPAcLZ8pEp+1LfVU7G/NAYHut5s7//DIuOErA9R8aC8
	A7sGor/x7KePqYrRY4+I2k3S4rL9wCoUCUrguwemT6vtcLhI3Op6RxmuBL5KHwjpl0B2V1V
	xcjVHz9Er51qlm9EoGYuQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:6uScwzahWEY=:B7vFfsvQ9tNVfx7WcgBOAn
	YsaKJaZPaXJ6ADZWYcUlm8v8qYqlFSWe5Xms1EhCRIg4qwwS94OaB3t6YxhKjnb3IVMUH2hdA
	Ne5CfZe+jAzb23yNoY/53Emc6FRrccI47GOJ0xTau5OaPlEI+Ak39/FKURpNFYvDa/p/8I1nb
	2ZTvo/xDAEhkyUVxOgFwcvC3hVdJiV00LzwWlT9bDJBW/RrrUx3yPUFd+Xi67ZyUiajmIEeai
	j2X0sZI1lppv0JZ77ML9FFgJg7tdJE1ARmw5sR5DUwjc8Jay77tJv19oeDquv6OHUPIAQ5bF9
	zQxA4U+o0HBjCpM3PnaaEwjdTN3i8WSY8GdKDVc7lgWw+WA8CjcAPQkOpDEt7PEDlpWg1tB2P
	VnF4JLcfvzwBWPFQY80C/VB9fkVI+CW4+Gj0sDBoAMlR/vWbg6S2y0Q67HFILirkzeF+ZibeM
	7ZCvUSc1dvUAJpCM/lcnKOfoNFiYH4MyIU/UoF1gYcX/CNI3fSZBJLAXBBckKpdLTDlD+nyV8
	szwVmY2nQ2xviwmozDs4vsyaoLAcz+ySWR0V6Svwt+cRFZrPA2a55CkZ1AQSeej82dCmgqyeK
	7VvWGBzp2yENBLHRL2UxSvQ6A3S5Xv6T8UtVtppnCs1zHMqHb/PmJLtlQOFsdKgHUWIa3KXYS
	0SM9Mw6gIM3LxHoxFl3Kfe7SwnbFx/giDdNEvBp1hXQ1LAKtOq2Wd0gFGH/RrstxQGpW1YHYZ
	9GNx91MHK1At4TdegqfTiuDlvPLUVHPzy8HHF4Soxgx0VK27RUpcW+h5xQk=
Subject: PROVIDES problem building u-boot variants
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 15 Jan 2018 15:12:05 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

Let's see if I can explain this well...

I created a recipe to build a u-boot variant (for prod'n programming) -
"u-boot-PLATFORM-mfg-sec.bb" - which has :

require u-boot-PLATFORM.inc
UBOOT_MACHINE = "tx6s-8035_mfg_sec_config"
SRC_URI += "file://tx6s-8035_mfg_sec_defconfig"

And 'bitbake u-boot-PLATFORM-mfg-sec' works ok with this. 

Now I want to split this out into two different variants, for different
cpu's.

So I begin by renaming the recipe to "u-boot-PLATFORM_tx6s-mfg-sec.bb",
But 'bitbake u-boot-PLATFORM_tx6s-mfg-sec'  throws:
   "Nothing PROVIDES 'u-boot- PLATFORM_tx6s-mfg-sec'"

Can't spot why this simple renaming is breaking things...?





Return-Path: <prvs=01586588be=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20E54E00E41; Fri, 16 Dec 2016 12:12:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [95.211.112.140 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2396 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Dec 2016 12:11:56 PST
Received: from mx5-04.smtp.antispamcloud.com (mx5-04.smtp.antispamcloud.com
	[95.211.112.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81EBEE00E17
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 12:11:56 -0800 (PST)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx5.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1cHyER-0000Lf-NW
	for yocto@yoctoproject.org; Fri, 16 Dec 2016 20:31:54 +0100
Received: from [192.168.1.16] (85.150.144.104) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Fri, 16 Dec 2016 20:31:50 +0100
To: <yocto@yoctoproject.org>
References: <1481796330-13908-1-git-send-email-piotr.lewicki@elfin.de>
	<1481796330-13908-2-git-send-email-piotr.lewicki@elfin.de>
	<7304ACDB-B05D-472D-8FF5-FC5CE402E88E@gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <58544125.903@topic.nl>
Date: Fri, 16 Dec 2016 20:31:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <7304ACDB-B05D-472D-8FF5-FC5CE402E88E@gmail.com>
X-Originating-IP: [85.150.144.104]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarw8AABa0l71MJhTGCVSA9t5V02KbWfB+BvCLafvmmGbn9dUv6vb7lzwh4VvH3mLi3t6mx
	j3Zz/WM/IwRyPjIHIwDopOMi3ASupkyB1tAKIbtMHU77ZIBE3mfnL/SM8xJdQDwJWw42swm4bO6g
	acpMpzKAsmN/Lb+FQ/HEaohPJy4sx1hqmEa9iilDbgon2SBEM3eltedoxtsLVBJQHGKESyMFY4Gq
	im2xiRyWNqAIwgPKlF4BAIVCj4pS1pIKtVOXE59Wyy39ARVu6lpph/EphEnxqviw72Riavv+eZyE
	9H0bbbZrb4z7LVDm3uwJhixiewzr8ZOLud7oSceJFiA/jmR53/wXFnold8ciD8b1mxJhifnL+9wg
	oTj4ygNPw1XfN5Vao551PLI0A+euz2IJwDlwPHEzll1HTKtfLd0Dh7Mx6JpC9ZPQXZ49HLEasqm4
	uOphTuacGGzHKdedZEw9KWX4l0QmPyjhxxYY4z85MF0Zcxw3qqhc+N6cuEg4XWh5FiXM+yx0pMoG
	+P/pBC5VVsJTxZyERX59ZsHZIitGQV6j2KuDs5a464mEDBF5jXtO8W0lTnDhjlXP2kk+CCknNfEx
	L7hrJSk60SF3F6RYOYr2
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.00324110662473)
X-Classification: not-spam/statistical-method1-global_tokens
X-Recommended-Action: accept
Subject: Re: [meta-raspberrypi][PATCH 1/1] linux-rpi: clean .config in before do_configure step
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
X-List-Received-Date: Fri, 16 Dec 2016 20:12:00 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 16-12-16 17:58, Khem Raj wrote:
>
>>=20

Kind regards,

Mike Looijmans
System Expert

TOPIC Products
Materiaalweg 4, NL-5681 RJ Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail





On Dec 15, 2016, at 2:05 AM, Piotr Lewicki <piotr.lewicki@elfin.de> wrote:
>>
>> Signed-off-by: Piotr Lewicki <piotr.lewicki@elfin.de>
>> ---
>> recipes-kernel/linux/linux-rpi.inc | 11 +++++++++--
>> 1 file changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/l=
inux-rpi.inc
>> index 95a9530..c665b9f 100644
>> --- a/recipes-kernel/linux/linux-rpi.inc
>> +++ b/recipes-kernel/linux/linux-rpi.inc
>> @@ -34,11 +34,13 @@ kernel_configure_variable() {
>>      fi
>> }
>>
>> -do_configure_prepend() {
>> +do_rpi_kconfig_clean() {
>>      # Clean .config
>> -    echo "" > ${B}/.config
>> +    echo -n "" > ${B}/.config
>>      CONF_SED_SCRIPT=3D""
>> +}
>>
>> +do_configure_prepend() {
>>      # oabi / eabi support
>>      kernel_configure_variable AEABI y
>>      if [ "${ARM_KEEP_OABI}" =3D "1" ] ; then
>> @@ -124,8 +126,11 @@ do_configure_prepend() {
>>      # Keep this the last line
>>      # Remove all modified configs and add the rest to .config
>>      sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.conf=
ig'
>> +    # Clean variable- useful when calling configure step multiple times
>> +    CONF_SED_SCRIPT=3D""
>>
>>      yes '' | oe_runmake oldconfig
>> +
>> }
>>
>> # Automatically depend on lzop-native if CONFIG_KERNEL_LZO is enabled
>> @@ -146,3 +151,5 @@ python () {
>>
>>      configfile.close()
>> }
>> +
>> +addtask rpi_kconfig_clean before do_configure after do_populate_lic
>
> we should investigate the kernel tooling from OE-Core and use that IMO

See this thread on the OE list for a similar problem:
http://lists.openembedded.org/pipermail/openembedded-core/2016-November/129=
205.html



--=20
Mike Looijmans


Return-Path: <sharmila.devadas@iwavesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 032EDE0096A; Mon, 20 Aug 2018 22:28:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [207.32.180.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 401 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Aug 2018 22:28:00 PDT
Received: from sip2-98.nexcess.net (iwavesystems.com [207.32.180.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70F44E0096A
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 22:28:00 -0700 (PDT)
Comment: DomainKeys? See http://domainkeys.sourceforge.net/
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=default; d=iwavesystems.com;
	b=bp7ljSqlGzP8Lc9stNPm7j0AWp6d1PdIwWt6IM54kCCoOapJO2zNDg6FoRDz1q/FkBKK8n12eAI1tnyL0QiodkCZJpljO8vgFssmH3uzjaeXzEWgJJhjbRA7upmZFIaCEXsEjG7Sqa5Ur56RylfIqhBnheoqH9MMU5SZPUHlhgmVNBTKq11tHkbQlukUDdMWCIHKejiHB0PIIOpgxNr8K057EMup8sK7TGewd9QNnQByFmPbFmuKaUc+Fo2GYI4jLHaL81q5vgfliPpnCELodpHQ9H27CIdcwR9lkd4S1NRfTNcpgXKYZuJ1y09TNjhbuQtlyEPf8veZPJifsIBIOQ==;
	h=Received:Received:To:From:Subject:Message-ID:Date:User-Agent:MIME-Version:Content-Type:Content-Language;
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=iwavesystems.com; h=to
	:from:subject:message-id:date:mime-version:content-type; s=
	default; bh=2VfGUZwISNw2z1gaEOesBfUZs0Q=; b=gE1nrryrTlHWAUOqRIYQ
	z+EJJ3MjwnIjtBmtz2hkS6SD5QU4r97nk19dtCPgiE6QtKIvws+kpwH+Ed8b7Zut
	wMAb2KuJNJq3JKlFXnn4Lh0CJqG6ntzWQT7agimWAwakPGCsS9euniFCTA/WFdOU
	UHEKTaKcgAbcwMo8SHUsEflP57jl51Qkz2EHlCKQcZN5nXujO4ANA1exJD7jAwwI
	vLFv/nRt1AqBUb83dFh6I1yjlkagaeDWO5W6qbxMjVdnI6RreCBlihSUXideTrSr
	rCNNYi4cHZ+GzLw1gdyADhCHrzUD/8/mxO6RvH9yvwHZxntmCBWyVLUDRJ8b+a9+
	PA==
Received: (qmail 23273 invoked by uid 108); 21 Aug 2018 01:21:18 -0400
Received: from unknown (HELO ?192.168.2.194?) (124.124.219.230)
	by sip2-98.nexcess.net with SMTP; 21 Aug 2018 01:21:18 -0400
To: yocto@yoctoproject.org
From: Sharmila <sharmila.devadas@iwavesystems.com>
Message-ID: <6f16f046-d77a-704f-dd7f-5c7dc7c71b3c@iwavesystems.com>
Date: Tue, 21 Aug 2018 10:46:20 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 21 Aug 2018 23:54:15 -0700
Subject: Yocto build using eclipse
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
X-List-Received-Date: Tue, 21 Aug 2018 05:28:01 -0000
Content-Type: multipart/alternative;
	boundary="------------2B8472B67F9C66A58112D8C3"
Content-Language: en-US

--------------2B8472B67F9C66A58112D8C3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Team,

I am using i.Mx8 Family processor. Can you please tell whether it is 
possible to build the yocto bsp using *eclipse* to get the images 
(uboot,zImage,rootfs,dtb files). If yes then what is the procedure for 
the same.

Regards,

Sharmila


--------------2B8472B67F9C66A58112D8C3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Team,</p>
    <p>I am using i.Mx8 Family processor. Can you please tell whether it
      is possible to build the yocto bsp using <b>eclipse</b> to get
      the images (uboot,zImage,rootfs,dtb files). If yes then what is
      the procedure for the same.   </p>
    <p>Regards,</p>
    <p>Sharmila<br>
    </p>
  </body>
</html>

--------------2B8472B67F9C66A58112D8C3--

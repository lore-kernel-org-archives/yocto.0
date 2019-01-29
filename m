Return-Path: <denis.hopp@vaillant-group.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B653E00CE8; Mon, 28 Jan 2019 22:32:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [213.15.0.25 listed in list.dnswl.org]
X-Greylist: delayed 460 seconds by postgrey-1.32 at yocto-www;
	Mon, 28 Jan 2019 22:32:34 PST
Received: from mailgw01.vaillant-group.net (mailgw01.vaillant-group.net
	[213.15.0.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DEEBE00CE2
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 22:32:34 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mailgw01.vaillant-group.net (Postfix) with ESMTP id CB8A39C33D
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 07:24:53 +0100 (CET)
X-Virus-Scanned: Virusscanner at mailgw01
Received: from mailgw01.vaillant-group.net ([127.0.0.1])
	by localhost (mailgw01.hp-net.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7TD6dmmbiLbp for <yocto@yoctoproject.org>;
	Tue, 29 Jan 2019 07:24:53 +0100 (CET)
Received: from jv-de-dc-fideas01.vaillant.vhgroup.lan
	(jv-de-dc-fideas01.vaillant.vhgroup.lan [10.107.7.215])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailgw01.vaillant-group.net (Postfix) with ESMTPS id B47A79C2A1
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 07:24:53 +0100 (CET)
Received: from DEFRVAI0005.vaillant.vhgroup.lan
	(defrvai0005.vaillant.vhgroup.lan [10.108.7.16])
	by jv-de-dc-fideas01.vaillant.vhgroup.lan (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 07:24:53 +0100 (CET)
Received: from DEFRVAI0013.vaillant.vhgroup.lan ([169.254.1.178]) by
	DEFRVAI0005.vaillant.vhgroup.lan ([10.108.7.16]) with mapi id
	14.03.0435.000; Tue, 29 Jan 2019 07:24:52 +0100
From: "Hopp, Denis" <Denis.Hopp@vaillant-group.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [YP Core] Thud moved out of active releases
Thread-Index: AdS3mNGHUFXY8jK2R+uTmJ8c5qAb2g==
Date: Tue, 29 Jan 2019 06:24:51 +0000
Message-ID: <0EACE12BE5CA844DB512EF10CAC5B840448B06B4@DEFRVAI0013.vaillant.vhgroup.lan>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.185.224]
MIME-Version: 1.0
Subject: [YP Core] Thud moved out of active releases
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
X-List-Received-Date: Tue, 29 Jan 2019 06:32:36 -0000
X-Groupsio-MsgNum: 43930
Content-Language: de-DE
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_003B_01D4B7A3.B92021B0"

------=_NextPart_000_003B_01D4B7A3.B92021B0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello all,

is it intended that the thud release 2.6 documents overview went 
into archived documents? I can't find any news about it and thud is
still promoted as latest release on the frontpage.
(https://www.yoctoproject.org/)
Or is this standard procedure and 2.6.1 will follow shortly?

Greetings

------=_NextPart_000_003B_01D4B7A3.B92021B0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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
8XBDXtb8cHZpt8LoFbt2pTQT1/+aF1K4vWqzo+odn+xwswWouOYnReT/JkhSJpCDq5/3UMETqyug
MpNxrxQrM3Je4To/8WBlrPwzlYTEt1VafOR9ZMfpiRX3dnS1+Ui/6GmB4XBMFaJHUk6HC6dsqZzp
f9a8eQ62xQAWhAEw4fdQMoyEa3/h3uKyyiKJfyT3txI7gpikDUKT6H4d/DIELKXHZmeqkEqunTyu
H6lgjfIDTCfAc+tZMLf4zpHMwAPSJm0h4QIDAQABo4IB1zCCAdMwVAYDVR0RBE0wS4EdRGVuaXMu
SG9wcEB2YWlsbGFudC1ncm91cC5jb22BEmRlaG9wcEB2aGdyb3VwLmxhboEWZGVuaXMuaG9wcEB2
YWlsbGFudC5kZTBeBgNVHSAEVzBVMFMGCisGAQQBgspcAQEwRTBDBggrBgEFBQcCARY3aHR0cDov
L3BraS52YWlsbGFudC1ncm91cC5jb20vbWFpbHBvbGljeS9zbWltZV9jcHMuaHRtbDBUBgNVHR8E
TTBLMEmgR6BFhkNodHRwOi8vcGtpLnZhaWxsYW50LWdyb3VwLmNvbS9jcmwvVmFpbGxhbnQlMjBH
cm91cCUyMFNNSU1FJTIwQ0EuY3JsMA4GA1UdDwEB/wQEAwIE8DATBgNVHSUEDDAKBggrBgEFBQcD
BDBgBggrBgEFBQcBAQRUMFIwUAYIKwYBBQUHMAKGRGh0dHA6Ly9wa2kudmFpbGxhbnQtZ3JvdXAu
Y29tL2NlcnQvVmFpbGxhbnQlMjBHcm91cCUyMFNNSU1FJTIwQ0EuY3J0MB8GA1UdIwQYMBaAFPuR
E/uoW+Qpo16cbayUqnSPSuF+MB0GA1UdDgQWBBT7rAxZSijbF7AxwKI6a6DYdWIe0DANBgkqhkiG
9w0BAQsFAAOCAgEABHH+UlDfWauv/UdvzoLt2c5c3dbqsSb7eZC6sHNbKrdm20tLMROgsMFxeWcL
4OFZSR6ThyDAD21qagAEgh+IiwP6NPl3UHT7g41H4acdYACBK8ae/lPxRQxVZcPVTGCcFdDTy6qY
RmhoQHlkdOivTFDgvv9B6k5oyL58g7csjMOeAbztMjU9USV3th4qp+WCg4F9asA6loYkgf0tlSwQ
cUhjZTEsFnhLeEPm7w5BaaV9aMDap3YrY0NbTYZDsRu1wQOCgSnOsfd/IQv9pH9PTIiFvzPVu2XQ
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
4XoAAAAAAAA=

------=_NextPart_000_003B_01D4B7A3.B92021B0--

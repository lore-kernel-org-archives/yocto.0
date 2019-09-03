Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50019E00D68; Tue,  3 Sep 2019 10:35:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,FAKE_REPLY_A1,
	FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (f_l_k[at]t-online.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [194.25.134.80 listed in list.dnswl.org]
	*  3.1 FAKE_REPLY_A1 FAKE_REPLY_A1
Received: from mailout01.t-online.de (mailout01.t-online.de [194.25.134.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DF47E00BF8
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2019 10:35:37 -0700 (PDT)
Received: from fwd10.aul.t-online.de (fwd10.aul.t-online.de [172.20.26.152])
	by mailout01.t-online.de (Postfix) with SMTP id DFF214216626
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2019 19:35:35 +0200 (CEST)
Received: from genericx86-64
	(ZwCEt0ZA8heq-wNqVldqbAaSeUjWZxfwIazpiwYU4zh-7qQ+aGNkRw2HbJvEV7gZbF@[79.219.232.14])
	by fwd10.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1i5CiL-0tqZqC0; Tue, 3 Sep 2019 19:35:33 +0200
Date: Tue, 3 Sep 2019 19:35:33 +0200
From: Markus Volk <f_l_k@t-online.de>
To: yocto@yoctoproject.org
Message-Id: <20190903193533.ace51abd138bfe35f0a96751@t-online.de>
X-Mailer: Sylpheed 3.6.0 (GTK+ 2.24.31; x86_64-poky-linux-gnu)
Mime-Version: 1.0
X-ID: ZwCEt0ZA8heq-wNqVldqbAaSeUjWZxfwIazpiwYU4zh-7qQ+aGNkRw2HbJvEV7gZbF
X-TOI-MSGID: b2e6d9ed-e0c2-4368-98ec-944323a95413
Subject: Re: Error at extensible sdk installation
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
X-List-Received-Date: Tue, 03 Sep 2019 17:35:38 -0000
X-Groupsio-MsgNum: 46494
Content-Type: multipart/mixed;
	boundary="Multipart=_Tue__3_Sep_2019_19_35_33_+0200_q1OJOlt8NDXMxqDY"

--Multipart=_Tue__3_Sep_2019_19_35_33_+0200_q1OJOlt8NDXMxqDY
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit


On Tue, 3 Sep 2019 09:13:03 -0700
Khem Raj <raj.khem@gmail.com> wrote:

> On Tue, Sep 3, 2019 at 12:05 AM Markus Volk <f_l_k@t-online.de> wrote:
> >
> >
> > Hello,
> >
> > i built myself an extensible sdk from current master branch. After successful build i tried to install and got the following error:
> >
> > /home/builder/tuxbox_sdk/tmp/sysroots/x86_64/usr/bin/postinst-docbook-xsl-stylesheets-native-xmlcatalog: line 5: xmlcatalog: command not found
> >
> > and was able to fix it wby adding "xmlcatalog" to HOSTTOOLS, but i guess thats not the propper way to fix it
> >
> 
> infact that might be right soluition. Can you submit a patch
> > --
> > Markus Volk <f_l_k@t-online.de>
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

Sure. Hopefully bitbake.conf is the right place to do so
-- 
Markus Volk <f_l_k@t-online.de>


--Multipart=_Tue__3_Sep_2019_19_35_33_+0200_q1OJOlt8NDXMxqDY
Content-Type: application/octet-stream;
 name="0001-bitbake.conf-add-xmlcatalog-to-HOSTTOOLS.patch"
Content-Disposition: attachment;
 filename="0001-bitbake.conf-add-xmlcatalog-to-HOSTTOOLS.patch"
Content-Transfer-Encoding: base64

RnJvbSAzODk2MWM4ZTZmMGY3Y2YyYzVjMzBmZGYyMzkxN2RhMGY3MGE4YjU0IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXJrdXMgVm9sayA8Zl9sX2tAdC1vbmxpbmUuZGU+CkRhdGU6
IFR1ZSwgMyBTZXAgMjAxOSAxOToxMDozNCArMDIwMApTdWJqZWN0OiBbUEFUQ0hdIGJpdGJha2Uu
Y29uZjogYWRkIHhtbGNhdGFsb2cgdG8gSE9TVFRPT0xTCgpPdGhlcndpc2UgdGhlIGluc3RhbGxh
dGlvbiBvZiBhbiBleHRlbnNpYmxlIHNkayB3aWxsIGZhaWwgaW4gY2FzZSBvZiByZWNpcGVzIHRo
YXQgaW5oZXJpdCB4bWxjYXRhbG9nLgoKU2lnbmVkLW9mZi1ieTogTWFya3VzIFZvbGsgPGZfbF9r
QHQtb25saW5lLmRlPgotLS0KIG1ldGEvY29uZi9iaXRiYWtlLmNvbmYgfCAyICstCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9tZXRh
L2NvbmYvYml0YmFrZS5jb25mIGIvbWV0YS9jb25mL2JpdGJha2UuY29uZgppbmRleCBhMGE3ZjQ5
MTFlLi5lYzQxZmQyZTNhIDEwMDY0NAotLS0gYS9tZXRhL2NvbmYvYml0YmFrZS5jb25mCisrKyBi
L21ldGEvY29uZi9iaXRiYWtlLmNvbmYKQEAgLTQ5MCw3ICs0OTAsNyBAQCBIT1NUVE9PTFMgKz0g
IiBcCiAgICAgbWt0ZW1wIG12IG5tIG9iamNvcHkgb2JqZHVtcCBvZCBwYXRjaCBwZXJsIHBvZDJt
YW4gcHIgcHJpbnRmIHB3ZCBweXRob24yIFwKICAgICBweXRob24yLjcgcHl0aG9uMyByYW5saWIg
cmVhZGVsZiByZWFkbGluayByZWFscGF0aCBybSBybWRpciBycGNnZW4gc2VkIHNlcSBzaCBzaGEy
NTZzdW0gXAogICAgIHNsZWVwIHNvcnQgc3BsaXQgc3RhdCBzdHJpbmdzIHN0cmlwIHRhaWwgdGFy
IHRlZSB0ZXN0IHRvdWNoIHRyIHRydWUgdW5hbWUgXAotICAgIHVuaXEgd2Mgd2dldCB3aGljaCB4
YXJncyBcCisgICAgdW5pcSB3YyB3Z2V0IHdoaWNoIHhhcmdzIHhtbGNhdGFsb2cgXAogIgogCiAj
IFRvb2xzIG5lZWRlZCB0byBydW4gdGVzdGltYWdlIHJ1bnRpbWUgaW1hZ2UgdGVzdGluZwotLSAK
Mi4xMy4zCgo=

--Multipart=_Tue__3_Sep_2019_19_35_33_+0200_q1OJOlt8NDXMxqDY--

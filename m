Return-Path: <rohitj.chd@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1F76E0043F; Tue, 28 Aug 2018 03:45:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rohitj.chd[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3734DE003C1
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 03:45:51 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id 139-v6so1924954itf.0
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 03:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:subject:message-id:importance:from:to:mime-version;
	bh=uO0+B8PvSmbZJ7To4b31vRSwsQ2koP0cYO0M3m2St8A=;
	b=pAQbMc7FdEKkrlYgaiol+BNMuaX7Y0+nGk19iOez25Hy6ieXhUFmvC4IRkACB4ni19
	0vYZGIJRrfD0LoJ8B/2NBbCkJym5XIFJp9+o9vNFAQfo+EZ+Hwzp6zyFqYsCTmGwP+ip
	2i5HgWscaaqRYIhwZ6NzHbq2Uf+mktPfNSZ8NEKhvHhNH/n/MjCOE5PKNFVDwC/Srkf2
	+hLFyvkD52FMFcTYi/NckObkeMYXv5PI0Z3Maby/5T4sTHB0R2XAV4BSJULjTitM+Fk4
	YotmJnE6OEYMzNIqUGFcmbVoPpFSkpVihY+awWOKQHLQRx8Mx3+gghBqDbrfjdoCxlcn
	1iNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:subject:message-id:importance:from:to
	:mime-version;
	bh=uO0+B8PvSmbZJ7To4b31vRSwsQ2koP0cYO0M3m2St8A=;
	b=BgIr1nCgv+VEy1VGEPLRrnCUc+CfA1yxIOw2BlPC597XAgAW9Upzd7OzO4HrBX6wiQ
	vkPYo+O/6xcWYE9a4Esuc6Q7aTrVXVgsA2+3BViCi3djD26VmBChe7wVpLVopBy/UmWo
	uT0Swoa4yXLY70iba2I5QcRXAvNJfe5GOMFXYbw/8venU9Auz0/YcdhDyy5q7NTctxrI
	7dtqYgx8davLKpIZayQg20ASF3SbJRO4X7Ye9JaXBO393FvgjYs0F8IrDZAmuRr53xP5
	oHTxnHjSpHJpHqSHcxJO15gaDWIUHRl39skSl/2oAKNFHOA1EfZ7czH7yi0YrcmGgeob
	BjoQ==
X-Gm-Message-State: APzg51C/8coIsKOZdlcfPfP0/AvDZ+GXvOMlMLcoGFqlm18Jmbib9vjG
	aVtsOOtT/eYe7KT0zD/S8sB5LyNe
X-Google-Smtp-Source: ANB0VdaSoVt5b2oRjPRTiF92r1qGAqQiajw8Je31opxF2TYlvl/CFcsWuZ5KPYZrVvhJFG3k3JC6/g==
X-Received: by 2002:a02:39a:: with SMTP id e26-v6mr712348jae.135.1535453150421;
	Tue, 28 Aug 2018 03:45:50 -0700 (PDT)
Received: from ?IPv6:2402:8100:3975:6d91::1? ([2402:8100:3975:6d91::1])
	by smtp.gmail.com with ESMTPSA id
	o18-v6sm348428ioa.83.2018.08.28.03.45.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 28 Aug 2018 03:45:50 -0700 (PDT)
Date: Tue, 28 Aug 2018 16:15:46 +0530
Message-ID: <fifdwqd2txkju4m028gqwx2d.1535453146632@email.android.com>
Importance: normal
From: "rohitj.chd" <rohitj.chd@gmail.com>
To: yocto@yoctoproject.org, anil@sysplay.in
MIME-Version: 1.0
Subject: Porting rtc-pcf85363.c file
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
X-List-Received-Date: Tue, 28 Aug 2018 10:45:51 -0000
Content-Type: multipart/alternative;
	boundary="--_com.samsung.android.email_1347906141790120"

----_com.samsung.android.email_1347906141790120
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

CkhpwqBJIG5lZWQgdG8gcG9ydCBydGMtcGNmODUzNjMgZHJpdmVyIHRvIG9sZGVyIHZlcnNpb24g
b2YgbGludXggLiBDYW4gYW55b25lIHN1Z2dlc3QgdGhlIHBhdGNoIHRoYXQgY2FuIGRpcmVjdGx5
IHdvcmsgb3Igc3RlcHMgbmVlZCB0byBiZSBmb2xsb3dlZC4KClNlbnQgZnJvbSBteSBTYW1zdW5n
IEdhbGF4eSBzbWFydHBob25lLg==

----_com.samsung.android.email_1347906141790120
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0
L2h0bWw7IGNoYXJzZXQ9VVRGLTgiPjwvaGVhZD48Ym9keT48ZGl2Pjxicj48L2Rpdj48ZGl2Pkhp
Jm5ic3A7PC9kaXY+PGRpdj5JIG5lZWQgdG8gcG9ydCBydGMtcGNmODUzNjMgZHJpdmVyIHRvIG9s
ZGVyIHZlcnNpb24gb2YgbGludXggLiBDYW4gYW55b25lIHN1Z2dlc3QgdGhlIHBhdGNoIHRoYXQg
Y2FuIGRpcmVjdGx5IHdvcmsgb3Igc3RlcHMgbmVlZCB0byBiZSBmb2xsb3dlZC48L2Rpdj48ZGl2
Pjxicj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2IGlkPSJjb21wb3Nlcl9zaWduYXR1cmUiPjxk
aXYgc3R5bGU9ImZvbnQtc2l6ZTo4NSU7Y29sb3I6IzU3NTc1NyIgZGlyPSJhdXRvIj5TZW50IGZy
b20gbXkgU2Ftc3VuZyBHYWxheHkgc21hcnRwaG9uZS48L2Rpdj48L2Rpdj48L2JvZHk+PC9odG1s
Pg==

----_com.samsung.android.email_1347906141790120--

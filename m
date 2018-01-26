Return-Path: <kkl89@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 032C5E00D6D; Fri, 26 Jan 2018 09:52:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kkl89[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.15 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0006]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Fri, 26 Jan 2018 09:52:38 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC15AE00D1C
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 09:52:38 -0800 (PST)
Received: from [87.171.74.217] ([87.171.74.217]) by
	3c-app-gmx-bs56.server.lan (via HTTP); Fri, 26 Jan 2018 18:47:34 +0100
MIME-Version: 1.0
Message-ID: <trinity-6b2e8095-aa74-42f3-960c-b26c140fbc44-1516988853978@3c-app-gmx-bs56>
From: "John Smith" <kkl89@gmx.de>
To: yocto@yoctoproject.org
Date: Fri, 26 Jan 2018 18:47:34 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:hDrQ+lE6XGCJmD8/grmWLCRH1iqsmwylrgGMe5Z2Yjl
	18Tvuc0YaJvOB7uCqHE7hFtJhvSzpNIAuQ9aa9BHz5TNa7K8Wd
	znWtStlGi2A4FiIDgd+EmxVlxrbOfitNEp/2XUmo8Hp4Dn599j
	IpIMRYlH0VUbNFxQx1ePFwK4cQbZRmlEuCVD0xYKEG7m8e31LE
	MxuBmZT/+CDSekcuim3QaiJASMI18+ccD/OSJf1EOM/cTLN9Sq
	cCl5YRJoupxQSgKGDY31wNtfzlezgP63uMjPih+KV2iPU8FnHo UT3PZM=
X-UI-Out-Filterresults: notjunk:1;V01:K0:Ghu/Hlw1aEk=:9tjc1S7qz13B4khAUexExA
	soGkvy9JRe6uXAQlABIpzGE7zUp1wQTq9l00C+kgbTx0SZlJ9o+t64XSrIOHtftHDFYG2b7ve
	PTm3ozNeJ9Wxd1kNbo8Nslxg76X5nSV/JFJkxTqDkgyJuyJftOoMSEGUcZcGLQ0XRq/AQcM18
	dG0bzPblqhsMYokNuoxuv00IzfXBl8evGKdWJmVAN2/0epIveTX1XnEcxcyVY7yqb71PUi09l
	ZyiucmoI6EywFnre2hAXRu733IMBpqFO5f9Jz5EevGTY+Yi69/q1EQRPI5sDO2GJfrK4MTl8e
	CxZdv8UWDDiEZeQ/6Z5H0Wx/EtflSuT5vYU/HrWfXmzZ7Ol5u/2e35GJYPqif0PjuKDYxIZtr
	wfsezGOHdJzjeaO6rnneG48bjgRgfyrSjIcPvU8SE6TuO4gT461y2knELC95MnLMPgObvginf
	V8Su0iDrDwG93vmLDazA8CQde4gkw6EAkZAQMy2qW5QZtOATihVy
Subject: populate_sdk won't work
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
X-List-Received-Date: Fri, 26 Jan 2018 17:52:40 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hi list,</div>

<div>&nbsp;</div>

<div>bitbake my-core-image -c&nbsp;populate_sdk does not work and fails at:&nbsp;x86_64-nativesdk-pokysdk-linux/nativesdk-libgcc</div>

<div>&nbsp;</div>

<div>Please see the log for further details:&nbsp;https://pastebin.com/w604z66S</div>

<div>&nbsp;</div>

<div>bitbake myimage works perfect except the sdk.</div>

<div>&nbsp;</div>

<div>Any suggestions?</div>

<div>&nbsp;</div>

<div>Best kkl</div></div></body></html>


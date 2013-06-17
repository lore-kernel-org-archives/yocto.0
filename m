Return-Path: <varun292006@gmail.com>
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7555EE01483
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 10:08:13 -0700 (PDT)
Received: by mail-pd0-f175.google.com with SMTP id 4so2988584pdd.20
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 10:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=giLIj4MubBYsTTyyZVuU6r9rrVlZ3RZS5s1zbBy6izQ=;
	b=tyPFcuLYney63cH1GC9Q2N/NYZc8LMuydMw9dBXhXwhG4TdOU7MVXqVu47hSn220ox
	vNKJoEIAAbnvd6BxLFamzli8GiGuxQI3Ux+BrHu3l9slgFSdRrWfOSIN0BMHM6hWmaqA
	h24nIfs8Elui59xQWPBE0/SX06ObFE/YAe4IeiTyrEkxZETQuIOc7Ki6LJV5WhUHV86y
	pClY0PLMN+MeG70Dw7iGRc8q8C50EBdkGJq698TiTgIgDbHEXMS+ggnKphsJVeRawjU6
	QVU49XOty3rKeglJvoKb/9MpNmraQZLkXB972X8PM+oYNXYtg11RShmXdYNSs8eQ9AkR
	nrqg==
MIME-Version: 1.0
X-Received: by 10.68.189.194 with SMTP id gk2mr13634370pbc.193.1371488893637; 
	Mon, 17 Jun 2013 10:08:13 -0700 (PDT)
Received: by 10.68.112.65 with HTTP; Mon, 17 Jun 2013 10:08:13 -0700 (PDT)
Date: Mon, 17 Jun 2013 22:38:13 +0530
Message-ID: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
From: varun bhatnagar <varun292006@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto Layers not getting recognized by bitbake
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
X-List-Received-Date: Mon, 17 Jun 2013 17:08:14 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1cc225198fd04df5ca4a2

--e89a8ff1cc225198fd04df5ca4a2
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to compile my code using yocto. For that I have created two
layers: "meta-networking" and "meta-oe". I have added these dependencies in
bblayer.conf too. But these are not getting build. Can anyone please tell
me what should I do to make this work.

//
Varun

--e89a8ff1cc225198fd04df5ca4a2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div style>I am trying to compile my cod=
e using yocto. For that I have created two layers: &quot;meta-networking&qu=
ot; and &quot;meta-oe&quot;. I have added these dependencies in bblayer.con=
f too. But these are not getting build. Can anyone please tell me what shou=
ld I do to make this work.</div>
<div style><br></div><div style>//</div><div style>Varun</div></div>

--e89a8ff1cc225198fd04df5ca4a2--

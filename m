Return-Path: <matthias.schoepfer@identpro.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62406E00AD8; Tue,  3 Apr 2018 06:42:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.17.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36567E00956
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2018 06:42:34 -0700 (PDT)
Received: from SBS-IDENTPRO.intranet.identpro.net ([176.95.137.65]) by
	mrelayeu.kundenserver.de (mreue104 [212.227.15.183]) with ESMTPSA
	(Nemesis)
	id 0LvkMO-1eT2ua3DzQ-017Yhv; Tue, 03 Apr 2018 15:42:32 +0200
Received: from SBS-IDENTPRO.intranet.identpro.net ([192.168.27.6]) by
	SBS-IDENTPRO.intranet.identpro.net ([192.168.27.6]) with mapi id
	14.01.0438.000; Tue, 3 Apr 2018 15:42:30 +0200
From: =?iso-8859-1?Q?Matthias_Sch=F6pfer?= <matthias.schoepfer@identpro.de>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] OpenBLAS recipe
Thread-Index: AQHTvdzq8zwSHZ2E6EOYVmTfl0s1ag==
Date: Tue, 3 Apr 2018 13:42:29 +0000
Message-ID: <C44683C49AD51C4AB28DA746E48E358701069662@SBS-IDENTPRO.intranet.identpro.net>
References: <C44683C49AD51C4AB28DA746E48E3587FFAD19@SBS-IDENTPRO.intranet.identpro.net>
	<CAMKF1soKz_hUBxvL=0qQ-BsaDcn0ia-T0MMEmL77pfgTne0_8w@mail.gmail.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [176.95.137.65]
MIME-Version: 1.0
X-Provags-ID: V03:K0:icQx9NeZutEmmVBznZpuGvDeH/X8TFNerzq+HBs6PL8FxFSMS2w
	2xcb7yKxcfFLzCr1OkvdXVU7M3cq0L/cUaRGkm/OZ8xtxS3LtbC/FS/+d1ULvk81Hr8A6++
	mziDiCqedlnD1RMfT589xyzuSh4KY1I3TYVa3uzroGWxBLXJZBqKWTDRZaToOJlpl/xr9Tf
	V6CxZSjTWwotyb8k+VX6Q==
X-UI-Out-Filterresults: notjunk:1;V01:K0:9VHkqqwcVnM=:wnZOaFz2QoVyl33d+K6npj
	ozP+51jOcsMAcjEK6iQx/DeSO78ef8SRrI0WK7pLb2tCVV6CkUStCOmLZ9xjZZcxwf9MknB9W
	8wdV8jee9LQFiKICbyCGakX1lpASJl2RleAXI/1qtRKJUCx4taQ1HtmuA0al3XNl+i/vlDXN/
	KO/G0ptgVcErhluGcXiSjp48+XUR4u+SZP6jVIV7+c6f2UGbdMjttS2xIt4M7KRLLVm1f0iju
	IwgUxIGyKsjfVJLKSXNG8j6X2BXck3NaocRoVUZJYZMRVMU5yUIngKAkg9Cimc36Ir+APxu1U
	r3iCKJzakxRgUnKsa3qA6bDUFzQ42ZPVVOjNeSAb8eX9qVz2YLD9MEo4L/NA/f6LwPBbNNUvl
	UrLseqKsi8Qu1PyJfu/kbLGz6vKn0Uh1xA1rjElIgyQTYVDH9TefVlfOa7W84RSJQ/g5JeKVu
	fHj3AyF3qSUvJN1+KWVBcTjLGVgxZtRmv49VZrcqprFXATnCe5wsJnsCPhxkNyIenDSfIVAIs
	Vjg4fPS8sWrsRbpHnPDoXk8zXnAUHxRdWWDEelVyBdJwgxk5nPGVUNVn5eB5BQ9/oRrX4DxNL
	fJSEMvoOQmwh/fbPXeFz1yl/f8i5w8CXxsiD5OIk6wgPN3iUPD7/nJew1JN8omxCxMq8sr6fT
	LpuJiBXQDJEAFr5sOALR3WO2VqDUfzNPx4OENWyoTfeNaw9Bgc+bhCeBmNMVtvVK5XsxA8KD/
	A0HFbpfdgBHCUMoFtzkqAvu86EH9SC7f4QbkP4QXYoyIJJ3mmWtJSzQHcRU=
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: OpenBLAS recipe
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
X-List-Received-Date: Tue, 03 Apr 2018 13:42:38 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Raj,=0A=
=0A=
thanks, it seems to work, if you add libgfortran to DEPENDS even without=0A=
the ONLY_CBLAS=3D1, at least for amd64 kind of architecture.=0A=
=0A=
Thanks and Regards,=0A=
=0A=
	Matthias=0A=
=0A=
=0A=
On 04/01/2018 03:03 AM, Khem Raj wrote:=0A=
> Please try this patch here=0A=
> =0A=
> https://github.com/kraj/intel-iot-refkit/commit/04cd5afec0c41deeb5e1a48b4=
3a0a31e708295c1=0A=
> =0A=
> On Wed, Mar 21, 2018 at 11:51 AM, Matthias Sch=F6pfer=0A=
> <matthias.schoepfer@identpro.de> wrote:=0A=
>> Hi Peter,=0A=
>>=0A=
>> I got some progress using:=0A=
>>=0A=
>>> export BLAS=3D/path/to/libblas.so=0A=
>>> export LAPACK=3D/path/to/liblapack.so=0A=
>>> export ATLAS=3D/path/to/libatlas.so=0A=
>>=0A=
>> like:=0A=
>>=0A=
>> export BLAS=3D${STAGING_LIBDIR}=0A=
>>=0A=
>> turns out, my lapack does not have cblas, when I enable CBLAS, I have an=
=0A=
>> Issue with Fortran C=0A=
>>=0A=
>> ERROR: lapack-3.8.0-r0 do_configure: Function failed: do_configure (log=
=0A=
>> file is located at=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/temp/log.do_configure.4609)=0A=
>> ERROR: Logfile of failure stored in:=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/temp/log.do_configure.4609=0A=
>> Log data follows:=0A=
>> | DEBUG: Executing shell function do_configure=0A=
>> | -- The Fortran compiler identification is GNU 7.3.0=0A=
>> | -- The C compiler identification is GNU 7.3.0=0A=
>> | -- Check for working Fortran compiler:=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux=
-gfortran=0A=
>> | -- Check for working Fortran compiler:=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux=
-gfortran=0A=
>>  -- works=0A=
>> | -- Detecting Fortran compiler ABI info=0A=
>> | -- Detecting Fortran compiler ABI info - done=0A=
>> | -- Checking whether=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux=
-gfortran=0A=
>> supports Fortran 90=0A=
>> | -- Checking whether=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux=
-gfortran=0A=
>> supports Fortran 90 -- yes=0A=
>> | -- Check for working C compiler:=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux=
-gcc=0A=
>> | -- Check for working C compiler:=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux=
-gcc=0A=
>> -- works=0A=
>> | -- Detecting C compiler ABI info=0A=
>> | -- Detecting C compiler ABI info - done=0A=
>> | -- Detecting C compile features=0A=
>> | -- Detecting C compile features - done=0A=
>> | -- Setting build type to 'Release' as none was specified.=0A=
>> | -- Looking for Python greater than 2.6 -=0A=
>> | -- Could NOT find PythonInterp (missing:  PYTHON_EXECUTABLE) (Required=
=0A=
>> is at least version "2.7")=0A=
>> | -- No suitable Python version found, so skipping summary tests.=0A=
>> | -- Build tests: OFF=0A=
>> | -- Reducing RELEASE optimization level to O2=0A=
>> | -- Looking for Fortran NONE - found=0A=
>> | -- Looking for Fortran INT_CPU_TIME - found=0A=
>> | -- Looking for Fortran EXT_ETIME - not found=0A=
>> | -- Looking for Fortran EXT_ETIME_ - not found=0A=
>> | -- Looking for Fortran INT_ETIME - not found=0A=
>> | -- --> Will use second_INT_CPU_TIME.f and dsecnd_INT_CPU_TIME.f as=0A=
>> timing function.=0A=
>> | -- Build deprecated routines: OFF=0A=
>> | -- Build single precision real: ON=0A=
>> | -- Build double precision real: ON=0A=
>> | -- Build single precision complex: ON=0A=
>> | -- Build double precision complex: ON=0A=
>> | -- Using supplied NETLIB BLAS implementation=0A=
>> | -- CBLAS enable=0A=
>> | -- Detecting Fortran/C Interface=0A=
>> | -- Detecting Fortran/C Interface - Failed to load sample executable=0A=
>> | -- Verifying Fortran/C Compiler Compatibility=0A=
>> | -- Verifying Fortran/C Compiler Compatibility - Failed=0A=
>> | CMake Error at=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInter=
face.cmake:383=0A=
>> (message):=0A=
>> |   The Fortran compiler:=0A=
>> |=0A=
>> |=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux=
-gfortran=0A=
>> |=0A=
>> |   and the C compiler:=0A=
>> |=0A=
>> |=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux=
-gcc=0A=
>> |=0A=
>> |   failed to compile a simple test project using both languages.  The=
=0A=
>> output=0A=
>> |   was:=0A=
>> |=0A=
>> |     Change Dir:=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC=0A=
>> |=0A=
>> |     Run Build=0A=
>> Command:"/home/mschoepf/identpro/yocto/ros-devel/tmp/hosttools/make"=0A=
>> "VerifyFortranC"=0A=
>> |=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake=0A=
>> -H/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/la=
pack/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInt=
erface/Verify=0A=
>> -B/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/la=
pack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC=0A=
>> --check-build-system CMakeFiles/Makefile.cmake 0=0A=
>> |     make -f CMakeFiles/Makefile2 VerifyFortranC=0A=
>> |     make[1]: Entering directory=0A=
>> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'=0A=
>> |=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake=0A=
>> -H/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/la=
pack/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInt=
erface/Verify=0A=
>> -B/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/la=
pack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC=0A=
>> --check-build-system CMakeFiles/Makefile.cmake 0=0A=
>> |=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake=0A=
>> -E cmake_progress_start=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC/CMakeFiles=0A=
>> 5=0A=
>> |     make -f CMakeFiles/Makefile2 CMakeFiles/VerifyFortranC.dir/all=0A=
>> |     make[2]: Entering directory=0A=
>> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'=0A=
>> |     make -f CMakeFiles/VerifyFortran.dir/build.make=0A=
>> CMakeFiles/VerifyFortran.dir/depend=0A=
>> |     make[3]: Entering directory=0A=
>> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'=0A=
>> |     cd=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC=0A=
>> &&=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake=0A=
>> -E cmake_depends "Unix Makefiles"=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInter=
face/Verify=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInter=
face/Verify=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC/CMakeFiles/VerifyFor=
tran.dir/DependInfo.cmake=0A=
>> |     Scanning dependencies of target VerifyFortran=0A=
>> |     make[3]: Leaving directory=0A=
>> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'=0A=
>> |     make -f CMakeFiles/VerifyFortran.dir/build.make=0A=
>> CMakeFiles/VerifyFortran.dir/requires=0A=
>> |     make[3]: Entering directory=0A=
>> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'=0A=
>> |     make[3]: Nothing to be done for=0A=
>> 'CMakeFiles/VerifyFortran.dir/requires'.=0A=
>> |     make[3]: Leaving directory=0A=
>> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'=0A=
>> |     make -f CMakeFiles/VerifyFortran.dir/build.make=0A=
>> CMakeFiles/VerifyFortran.dir/build=0A=
>> |     make[3]: Entering directory=0A=
>> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'=0A=
>> |     [ 20%] Building Fortran object=0A=
>> CMakeFiles/VerifyFortran.dir/VerifyFortran.f.o=0A=
>> |=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux=
-gfortran=0A=
>>   -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse=0A=
>> --sysroot=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-id=
p-linux/lapack/3.8.0-r0/recipe-sysroot=0A=
>> -std=3Df2008=0A=
>> -I/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/la=
pack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC=0A=
>>  -O2 -DNDEBUG -O2   -c=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInter=
face/Verify/VerifyFortran.f=0A=
>> -o CMakeFiles/VerifyFortran.dir/VerifyFortran.f.o=0A=
>> |     [ 40%] Linking Fortran static library libVerifyFortran.a=0A=
>> |=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake=0A=
>> -P CMakeFiles/VerifyFortran.dir/cmake_clean_target.cmake=0A=
>> |=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake=0A=
>> -E cmake_link_script CMakeFiles/VerifyFortran.dir/link.txt --verbose=3D1=
=0A=
>> |     x86_64-idp-linux-ar qc libVerifyFortran.a=0A=
>> CMakeFiles/VerifyFortran.dir/VerifyFortran.f.o=0A=
>> |=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux=
-ranlib=0A=
>> libVerifyFortran.a=0A=
>> |     make[3]: Leaving directory=0A=
>> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'=0A=
>> |     [ 40%] Built target VerifyFortran=0A=
>> |     make -f CMakeFiles/VerifyFortranC.dir/build.make=0A=
>> CMakeFiles/VerifyFortranC.dir/depend=0A=
>> |     make[3]: Entering directory=0A=
>> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'=0A=
>> |     cd=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC=0A=
>> &&=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake=0A=
>> -E cmake_depends "Unix Makefiles"=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInter=
face/Verify=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInter=
face/Verify=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC/CMakeFiles/VerifyFor=
tranC.dir/DependInfo.cmake=0A=
>> |     Scanning dependencies of target VerifyFortranC=0A=
>> |     make[3]: Leaving directory=0A=
>> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'=0A=
>> |     make -f CMakeFiles/VerifyFortranC.dir/build.make=0A=
>> CMakeFiles/VerifyFortranC.dir/build=0A=
>> |     make[3]: Entering directory=0A=
>> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'=0A=
>> |     [ 60%] Building C object CMakeFiles/VerifyFortranC.dir/main.c.o=0A=
>> |=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux=
-gcc=0A=
>>  -I/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/l=
apack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC  -m64 -march=3Dco=
re2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse  --sysroot=3D/home/mschoepf/identp=
ro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recipe-sysro=
ot  -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/=
mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-=
r0=3D/usr/src/debug/lapack/3.8.0-r0 -fdebug-prefix-map=3D/home/mschoepf/ide=
ntpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recipe-sy=
sroot-native=3D -fdebug-prefix-map=3D/home/mschoepf/identpro/yocto/ros-deve=
l/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recipe-sysroot=3D   -m64 -mar=
ch=3Dcore2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse  --sysroot=3D/home/mschoepf=
/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recip=
e-sysroot -DNDEBUG   -o CMakeFiles/VerifyFortranC.dir/main.c.o   -c /home/m=
schoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r=
0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInterface/Verif=
y/main.c=0A=
>> |     [ 80%] Building C object CMakeFiles/VerifyFortranC.dir/VerifyC.c.o=
=0A=
>> |=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux=
-gcc=0A=
>>  -I/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/l=
apack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC  -m64 -march=3Dco=
re2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse  --sysroot=3D/home/mschoepf/identp=
ro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recipe-sysro=
ot  -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/=
mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-=
r0=3D/usr/src/debug/lapack/3.8.0-r0 -fdebug-prefix-map=3D/home/mschoepf/ide=
ntpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recipe-sy=
sroot-native=3D -fdebug-prefix-map=3D/home/mschoepf/identpro/yocto/ros-deve=
l/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recipe-sysroot=3D   -m64 -mar=
ch=3Dcore2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse  --sysroot=3D/home/mschoepf=
/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.0-r0/recip=
e-sysroot -DNDEBUG   -o CMakeFiles/VerifyFortranC.dir/VerifyC.c.o   -c /hom=
e/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapack/3.8.=
0-r0/recipe-sysroot-native/usr/share/cmake-3.8/Modules/FortranCInterface/Ve=
rify/VerifyC.c=0A=
>> |     [100%] Linking C executable VerifyFortranC=0A=
>> |=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/cmake=0A=
>> -E cmake_link_script CMakeFiles/VerifyFortranC.dir/link.txt --verbose=3D=
1=0A=
>> |=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/recipe-sysroot-native/usr/bin/x86_64-idp-linux/x86_64-idp-linux=
-gcc=0A=
>>  -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse=0A=
>> --sysroot=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-id=
p-linux/lapack/3.8.0-r0/recipe-sysroot=0A=
>>  -O2 -pipe -g -feliminate-unused-debug-types=0A=
>> -fdebug-prefix-map=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/co=
re2-64-idp-linux/lapack/3.8.0-r0=3D/usr/src/debug/lapack/3.8.0-r0=0A=
>> -fdebug-prefix-map=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/co=
re2-64-idp-linux/lapack/3.8.0-r0/recipe-sysroot-native=3D=0A=
>> -fdebug-prefix-map=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/co=
re2-64-idp-linux/lapack/3.8.0-r0/recipe-sysroot=3D=0A=
>>   -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse=0A=
>> --sysroot=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-id=
p-linux/lapack/3.8.0-r0/recipe-sysroot=0A=
>> -DNDEBUG  -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse=0A=
>> --sysroot=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-id=
p-linux/lapack/3.8.0-r0/recipe-sysroot=0A=
>>  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -Wl,-O1=0A=
>> -Wl,--hash-style=3Dgnu -Wl,--as-needed=0A=
>> CMakeFiles/VerifyFortranC.dir/main.c.o=0A=
>> CMakeFiles/VerifyFortranC.dir/VerifyC.c.o  -o VerifyFortranC=0A=
>> libVerifyFortran.a -lgfortran -lm -lquadmath -lm=0A=
>> |     CMakeFiles/VerifyFortranC.dir/main.c.o: In function `main':=0A=
>> |=0A=
>> /usr/src/debug/lapack/3.8.0-r0/build/CMakeFiles/FortranCInterface/Verify=
C/-native/usr/share/cmake-3.8/Modules/FortranCInterface/Verify/main.c:14:=
=0A=
>> undefined reference to `VerifyFortran'=0A=
>> |     collect2: error: ld returned 1 exit status=0A=
>> |     make[3]: *** [CMakeFiles/VerifyFortranC.dir/build.make:125:=0A=
>> VerifyFortranC] Error 1=0A=
>> |     make[3]: Leaving directory=0A=
>> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'=0A=
>> |     make[2]: *** [CMakeFiles/Makefile2:109:=0A=
>> CMakeFiles/VerifyFortranC.dir/all] Error 2=0A=
>> |     make[2]: Leaving directory=0A=
>> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'=0A=
>> |     make[1]: *** [CMakeFiles/Makefile2:121:=0A=
>> CMakeFiles/VerifyFortranC.dir/rule] Error 2=0A=
>> |     make[1]: Leaving directory=0A=
>> '/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/FortranCInterface/VerifyC'=0A=
>> |     make: *** [Makefile:134: VerifyFortranC] Error 2=0A=
>> |=0A=
>> | Call Stack (most recent call first):=0A=
>> |   CBLAS/CMakeLists.txt:9 (FortranCInterface_VERIFY)=0A=
>> |=0A=
>> |=0A=
>> | -- Configuring incomplete, errors occurred!=0A=
>> | See also=0A=
>> "/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/CMakeOutput.log".=0A=
>> | See also=0A=
>> "/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lap=
ack/3.8.0-r0/build/CMakeFiles/CMakeError.log".=0A=
>> | WARNING:=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/temp/run.do_configure.4609:1=0A=
>> exit 1 from 'cmake $oecmake_sitefile=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/lapack-3.8.0=0A=
>> -DCMAKE_INSTALL_PREFIX:PATH=3D/usr -DCMAKE_INSTALL_BINDIR:PATH=3Dbin=0A=
>> -DCMAKE_INSTALL_SBINDIR:PATH=3Dsbin=0A=
>> -DCMAKE_INSTALL_LIBEXECDIR:PATH=3Dlibexec=0A=
>> -DCMAKE_INSTALL_SYSCONFDIR:PATH=3D/etc=0A=
>> -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=3D../com=0A=
>> -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=3D/var -DCMAKE_INSTALL_LIBDIR:PATH=3D=
lib=0A=
>> -DCMAKE_INSTALL_INCLUDEDIR:PATH=3Dinclude=0A=
>> -DCMAKE_INSTALL_DATAROOTDIR:PATH=3Dshare -DCMAKE_INSTALL_SO_NO_EXE=3D0=
=0A=
>> -DCMAKE_TOOLCHAIN_FILE=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/wor=
k/core2-64-idp-linux/lapack/3.8.0-r0/toolchain.cmake=0A=
>> -DCMAKE_VERBOSE_MAKEFILE=3D1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1=0A=
>> -DBUILD_SHARED_LIBS=3DON -DCBLAS=3DON ${PACKAGECONFIG_CONFARGS} -Wno-dev=
'=0A=
>> | ERROR: Function failed: do_configure (log file is located at=0A=
>> /home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/lapa=
ck/3.8.0-r0/temp/log.do_configure.4609)=0A=
>> ERROR: Task=0A=
>> (/home/mschoepf/identpro/yocto/poky/meta-ros/recipes-extended/lapack/lap=
ack_3.8.0.bb:do_configure)=0A=
>> failed with exit code '1=0A=
>>=0A=
>> On 03/17/2018 02:27 PM, Peter Balazovic wrote:=0A=
>>>=0A=
>>> for now I took openblas recipe from here=0A=
>>> https://github.com/CogentEmbedded/meta-opencl/tree/master/meta-ocl-comm=
on/recipes-graphics/openblas=0A=
>>> <https://link.getmailspring.com/link/1521292484.local-966b54e7-d3df-v1.=
1.5-5834c99f@getmailspring.com/0?redirect=3Dhttps%3A%2F%2Fgithub.com%2FCoge=
ntEmbedded%2Fmeta-opencl%2Ftree%2Fmaster%2Fmeta-ocl-common%2Frecipes-graphi=
cs%2Fopenblas&recipient=3DeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw%3D%3D>=0A=
>>>=0A=
>>> it compiles.=0A=
>>>=0A=
>>> BTW how fortran can be added to yocto build?=0A=
>>>=0A=
>>> Secondly I wanna to use it for scipy build but even though compiles wit=
h=0A=
>>> no error but openblas can't be found by this=0A=
>>>=0A=
>>> NOTE: Executing RunQueue Tasks=0A=
>>> ERROR: scipy-1.0.0-r0 do_compile: python setup.py build execution faile=
d.=0A=
>>> ERROR: scipy-1.0.0-r0 do_compile: Function failed: do_compile (log file=
=0A=
>>> is located at=0A=
>>> /../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/scipy/1.0.0-r0/te=
mp/log.do_compile.12169)=0A=
>>> ERROR: Logfile of failure stored in:=0A=
>>> /../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/scipy/1.0.0-r0/te=
mp/log.do_compile.12169=0A=
>>> Log data follows:=0A=
>>> | DEBUG: Executing shell function do_compile=0A=
>>> | ERROR: python setup.py build execution failed.=0A=
>>> |=0A=
>>> /../build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/distutils/dist.py=
:267:=0A=
>>> UserWarning: Unknown distribution option: 'python_requires'=0A=
>>> | warnings.warn(msg)=0A=
>>> | lapack_opt_info:=0A=
>>> | openblas_lapack_info:=0A=
>>> | libraries openblas not found in=0A=
>>> ['/../build/tmp/sysroots/x86_64-linux/usr/lib']=0A=
>>> | NOT AVAILABLE=0A=
>>>=0A=
>>> Even openblas has been added still can't be found ... I look at scipy=
=0A=
>>> built from source guide it says=0A=
>>>=0A=
>>> |=0A=
>>>=0A=
>>> export BLAS=3D/path/to/libblas.so=0A=
>>> export LAPACK=3D/path/to/liblapack.so=0A=
>>> export ATLAS=3D/path/to/libatlas.so=0A=
>>> python setup.py ............=0A=
>>>=0A=
>>> |=0A=
>>> I wonder if openblas needs to somwhow installed or is it issue of scipy=
=0A=
>>> build process ...=0A=
>>>=0A=
>>>=0A=
>>> Sent from Mailspring=0A=
>>> <https://link.getmailspring.com/link/1521292484.local-966b54e7-d3df-v1.=
1.5-5834c99f@getmailspring.com/1?redirect=3Dhttps%3A%2F%2Fgetmailspring.com=
%2F&recipient=3DeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw%3D%3D>,=0A=
>>> the best free email app for work=0A=
>>>=0A=
>>>=0A=
>>> On Mar 17 2018, at 2:08 pm, Matthias Sch=F6pfer=0A=
>>> <matthias.schoepfer@identpro.de> wrote:=0A=
>>>=0A=
>>>=0A=
>>>     Hi Peter,=0A=
>>>=0A=
>>>     openblas builds for me fine. This seems to be more of an issue with=
=0A=
>>>     hard/softfloat than openBLAS.=0A=
>>>=0A=
>>>     If I remember correctly, there was at some point a problem with for=
tran,=0A=
>>>     which might be needed for openBLAS. But this seems not to be the is=
sue=0A=
>>>     here.=0A=
>>>=0A=
>>>     Maybe try to compile it for qemu-x86 and see, if it works there...=
=0A=
>>>=0A=
>>>     Regards,=0A=
>>>=0A=
>>>     Matthias=0A=
>>>=0A=
>>>     On 03/17/2018 11:44 AM, Peter Balazovic wrote:=0A=
>>>=0A=
>>>         Hello guys,=0A=
>>>=0A=
>>>         I tried to use openblas recipe from=0A=
>>>         https://layers.openembedded.org/layerindex/recipe/68888/=0A=
>>>         recipes-convnet/openblas/openblas_0.2.19.bb=0A=
>>>         <http://github.com/intel/intel-iot-refkit/blob/master/meta-refk=
it-extra/recipes-convnet/openblas/openblas_0.2.19.bb>=0A=
>>>=0A=
>>>         Unfortunately got compiling error btw I notice there is further=
=0A=
>>>         openBLAS=0A=
>>>         release 0.2.20, is there any update on that recipe?=0A=
>>>=0A=
>>>=0A=
>>>         Compiling problems:=0A=
>>>=0A=
>>>         NOTE: Executing RunQueue Tasks=0A=
>>>         ERROR: openblas-0.2.19-r0 do_compile: oe_runmake failed=0A=
>>>         ERROR: openblas-0.2.19-r0 do_compile: Function failed:=0A=
>>>         do_compile (log=0A=
>>>         file is located at=0A=
>>>         ../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0=
.2.19-r0/temp/log.do_compile.2836)=0A=
>>>         ERROR: Logfile of failure stored in:=0A=
>>>         ../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0=
.2.19-r0/temp/log.do_compile.2836=0A=
>>>         Log data follows:=0A=
>>>         | DEBUG: Executing shell function do_compile=0A=
>>>         | NOTE: make -j 4 HOSTCC=3Dgcc  CC=3Darm-poky-linux-gnueabi-gcc=
=0A=
>>>         --sysroot=3D../build/tmp/sysroots/ ONLY_CBLAS=3D1 BINARY=3D32 T=
ARGET=3Darm=0A=
>>>         | make[1]: warning: -jN forced in submake: disabling jobserver =
mode.=0A=
>>>         | make[1]: Entering directory=0A=
>>>         '../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/=
0.2.19-r0/OpenBLAS-0.2.19/interface'=0A=
>>>         | arm-poky-linux-gnueabi-gcc  --sysroot=3D../build/tmp/sysroots=
/  -O2=0A=
>>>         -pipe -g -feliminate-unused-debug-types=0A=
>>>         -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-lin=
ux-gnueabi/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0=0A=
>>>         -fdebug-prefix-map=3D../build/tmp/sysroots/x86_64-linux=3D=0A=
>>>         -fdebug-prefix-map=3D../build/tmp/sysroots/=3D  -O2=0A=
>>>         -DMAX_STACK_ALLOC=3D2048=0A=
>>>         -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE=0A=
>>>         -DSMP_SERVER=0A=
>>>         -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASMFNAME=3D_ -D=
NAME=3D_=0A=
>>>         -DCNAME=3D=0A=
>>>         -DCHAR_NAME=3D\"_\" -DCHAR_CNAME=3D\"\" -DNO_AFFINITY -I. -O2=
=0A=
>>>         -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_L=
APACK=0A=
>>>         -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4=0A=
>>>         -DASMNAME=3Dcblas_isamax -DASMFNAME=3Dcblas_isamax_ -DNAME=3Dcb=
las_isamax_=0A=
>>>         -DCNAME=3Dcblas_isamax -DCHAR_NAME=3D\"cblas_isamax_\"=0A=
>>>         -DCHAR_CNAME=3D\"cblas_isamax\" -DNO_AFFINITY -I.. -I. -UDOUBLE=
=0A=
>>>         -UCOMPLEX=0A=
>>>         -DCBLAS -c -DUSE_ABS -UUSE_MIN imax.c -o cblas_isamax.o=0A=
>>>         | arm-poky-linux-gnueabi-gcc  --sysroot=3D../build/tmp/sysroots=
/  -O2=0A=
>>>         -pipe -g -feliminate-unused-debug-types=0A=
>>>         -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-lin=
ux-gnueabi/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0=0A=
>>>         -fdebug-prefix-map=3D../build/tmp/sysroots/x86_64-linux=3D=0A=
>>>         -fdebug-prefix-map=3D../build/tmp/sysroots/=3D  -O2=0A=
>>>         -DMAX_STACK_ALLOC=3D2048=0A=
>>>         -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE=0A=
>>>         -DSMP_SERVER=0A=
>>>         -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASMFNAME=3D_ -D=
NAME=3D_=0A=
>>>         -DCNAME=3D=0A=
>>>         -DCHAR_NAME=3D\"_\" -DCHAR_CNAME=3D\"\" -DNO_AFFINITY -I. -O2=
=0A=
>>>         -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_L=
APACK=0A=
>>>         -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4=0A=
>>>         -DASMNAME=3Dcblas_sasum -DASMFNAME=3Dcblas_sasum_ -DNAME=3Dcbla=
s_sasum_=0A=
>>>         -DCNAME=3Dcblas_sasum -DCHAR_NAME=3D\"cblas_sasum_\"=0A=
>>>         -DCHAR_CNAME=3D\"cblas_sasum\" -DNO_AFFINITY -I.. -I. -UDOUBLE=
=0A=
>>>         -UCOMPLEX=0A=
>>>         -DCBLAS -c asum.c -o cblas_sasum.o=0A=
>>>         | arm-poky-linux-gnueabi-gcc  --sysroot=3D../build/tmp/sysroots=
/  -O2=0A=
>>>         -pipe -g -feliminate-unused-debug-types=0A=
>>>         -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-lin=
ux-gnueabi/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0=0A=
>>>         -fdebug-prefix-map=3D../build/tmp/sysroots/x86_64-linux=3D=0A=
>>>         -fdebug-prefix-map=3D../build/tmp/sysroots/=3D  -O2=0A=
>>>         -DMAX_STACK_ALLOC=3D2048=0A=
>>>         -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE=0A=
>>>         -DSMP_SERVER=0A=
>>>         -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASMFNAME=3D_ -D=
NAME=3D_=0A=
>>>         -DCNAME=3D=0A=
>>>         -DCHAR_NAME=3D\"_\" -DCHAR_CNAME=3D\"\" -DNO_AFFINITY -I. -O2=
=0A=
>>>         -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_L=
APACK=0A=
>>>         -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4=0A=
>>>         -DASMNAME=3Dcblas_saxpy -DASMFNAME=3Dcblas_saxpy_ -DNAME=3Dcbla=
s_saxpy_=0A=
>>>         -DCNAME=3Dcblas_saxpy -DCHAR_NAME=3D\"cblas_saxpy_\"=0A=
>>>         -DCHAR_CNAME=3D\"cblas_saxpy\" -DNO_AFFINITY -I.. -I. -UDOUBLE=
=0A=
>>>         -UCOMPLEX=0A=
>>>         -DCBLAS -c axpy.c -o cblas_saxpy.o=0A=
>>>         | arm-poky-linux-gnueabi-gcc  --sysroot=3D../build/tmp/sysroots=
/  -O2=0A=
>>>         -pipe -g -feliminate-unused-debug-types=0A=
>>>         -fdebug-prefix-map=3D../build/tmp/work/cortexa9hf-neon-poky-lin=
ux-gnueabi/openblas/0.2.19-r0=3D/usr/src/debug/openblas/0.2.19-r0=0A=
>>>         -fdebug-prefix-map=3D../build/tmp/sysroots/x86_64-linux=3D=0A=
>>>         -fdebug-prefix-map=3D../build/tmp/sysroots/=3D  -O2=0A=
>>>         -DMAX_STACK_ALLOC=3D2048=0A=
>>>         -Wall -DF_INTERFACE_GFORT -fPIC -DNO_LAPACK -DNO_LAPACKE=0A=
>>>         -DSMP_SERVER=0A=
>>>         -DNO_WARMUP -DMAX_CPU_NUMBER=3D4 -DASMNAME=3D -DASMFNAME=3D_ -D=
NAME=3D_=0A=
>>>         -DCNAME=3D=0A=
>>>         -DCHAR_NAME=3D\"_\" -DCHAR_CNAME=3D\"\" -DNO_AFFINITY -I. -O2=
=0A=
>>>         -DMAX_STACK_ALLOC=3D2048 -Wall -DF_INTERFACE_GFORT -fPIC -DNO_L=
APACK=0A=
>>>         -DNO_LAPACKE -DSMP_SERVER -DNO_WARMUP -DMAX_CPU_NUMBER=3D4=0A=
>>>         -DASMNAME=3Dcblas_scopy -DASMFNAME=3Dcblas_scopy_ -DNAME=3Dcbla=
s_scopy_=0A=
>>>         -DCNAME=3Dcblas_scopy -DCHAR_NAME=3D\"cblas_scopy_\"=0A=
>>>         -DCHAR_CNAME=3D\"cblas_scopy\" -DNO_AFFINITY -I.. -I. -UDOUBLE=
=0A=
>>>         -UCOMPLEX=0A=
>>>         -DCBLAS -c copy.c -o cblas_scopy.o=0A=
>>>         | <command-line>:0:0: warning: "ASMNAME" redefined=0A=
>>>         | <command-line>:0:0: warning: "ASMNAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "ASMFNAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "NAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "CNAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "CHAR_NAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "CHAR_CNAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "ASMNAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "ASMFNAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "NAME" redefined=0A=
>>>         | In file included from=0A=
>>>         ../build/tmp/sysroots//usr/include/features.h:392:0,=0A=
>>>         |                  from=0A=
>>>         ../build/tmp/sysroots//usr/include/stdio.h:27,=0A=
>>>         |                  from imax.c:39:=0A=
>>>         | ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal er=
ror:=0A=
>>>         gnu/stubs-soft.h: No such file or directory=0A=
>>>         |  # include <gnu/stubs-soft.h>=0A=
>>>         |                              ^=0A=
>>>         | compilation terminated.=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "CNAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "CHAR_NAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "CHAR_CNAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "ASMFNAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "NAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "CNAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "CHAR_NAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "CHAR_CNAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "ASMNAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "ASMFNAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "NAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "CNAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "CHAR_NAME" redefined=0A=
>>>         | In file included from=0A=
>>>         ../build/tmp/sysroots//usr/include/features.h:392:0,=0A=
>>>         |                  from=0A=
>>>         ../build/tmp/sysroots//usr/include/stdio.h:27,=0A=
>>>         |                  from axpy.c:39:=0A=
>>>         | ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal er=
ror:=0A=
>>>         gnu/stubs-soft.h: No such file or directory=0A=
>>>         |  # include <gnu/stubs-soft.h>=0A=
>>>         |                              ^=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | <command-line>:0:0: warning: "CHAR_CNAME" redefined=0A=
>>>         | <command-line>:0:0: note: this is the location of the previou=
s=0A=
>>>         definition=0A=
>>>         | ERROR: oe_runmake failed=0A=
>>>         | In file included from=0A=
>>>         ../build/tmp/sysroots//usr/include/features.h:392:0,=0A=
>>>         |                  from=0A=
>>>         ../build/tmp/sysroots//usr/include/stdio.h:27,=0A=
>>>         |                  from asum.c:39:=0A=
>>>         | ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal er=
ror:=0A=
>>>         gnu/stubs-soft.h: No such file or directory=0A=
>>>         |  # include <gnu/stubs-soft.h>=0A=
>>>         |                              ^=0A=
>>>         | compilation terminated.=0A=
>>>         | In file included from=0A=
>>>         ../build/tmp/sysroots//usr/include/features.h:392:0,=0A=
>>>         |                  from=0A=
>>>         ../build/tmp/sysroots//usr/include/stdio.h:27,=0A=
>>>         |                  from copy.c:39:=0A=
>>>         | ../build/tmp/sysroots//usr/include/gnu/stubs.h:7:29: fatal er=
ror:=0A=
>>>         gnu/stubs-soft.h: No such file or directory=0A=
>>>         |  # include <gnu/stubs-soft.h>=0A=
>>>         |                              ^=0A=
>>>         | compilation terminated.=0A=
>>>         | compilation terminated.=0A=
>>>         | Makefile:1351: recipe for target 'cblas_isamax.o' failed=0A=
>>>         | make[1]: *** [cblas_isamax.o] Error 1=0A=
>>>         | make[1]: *** Waiting for unfinished jobs....=0A=
>>>         | Makefile:1375: recipe for target 'cblas_sasum.o' failed=0A=
>>>         | make[1]: *** [cblas_sasum.o] Error 1=0A=
>>>         | Makefile:1447: recipe for target 'cblas_scopy.o' failed=0A=
>>>         | make[1]: *** [cblas_scopy.o] Error 1=0A=
>>>         | Makefile:1435: recipe for target 'cblas_saxpy.o' failed=0A=
>>>         | make[1]: *** [cblas_saxpy.o] Error 1=0A=
>>>         | make[1]: Leaving directory=0A=
>>>         '../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/=
0.2.19-r0/OpenBLAS-0.2.19/interface'=0A=
>>>         | Makefile:133: recipe for target 'libs' failed=0A=
>>>         | make: *** [libs] Error 1=0A=
>>>         | ERROR: Function failed: do_compile (log file is located at=0A=
>>>         ../build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/openblas/0=
.2.19-r0/temp/log.do_compile.2836)=0A=
>>>         ERROR: Task=0A=
>>>         (../sources/meta-fsl-bsp-release/imx/meta-bsp/recipes-graphics/=
openblas/openblas_0.2.19.bb:do_compile)=0A=
>>>         failed with exit code '1'=0A=
>>>         NOTE: Tasks Summary: Attempted 433 tasks of which 432 didn't=0A=
>>>         need to be=0A=
>>>         rerun and 1 failed.=0A=
>>>=0A=
>>>=0A=
>>>=0A=
>>>     --=0A=
>>>     Dr.-Ing. Matthias Sch=F6pfer=0A=
>>>=0A=
>>>     Softwareentwicklung=0A=
>>>=0A=
>>>     ____________________________________=0A=
>>>=0A=
>>>     IdentPro GmbH=0A=
>>>     Camp-Spich-Str. 4=0A=
>>>     53842 Troisdorf=0A=
>>>=0A=
>>>     Tel: +49 (0)2241 / 866 392 46=0A=
>>>     Fax: +49 (0)2241 / 866 392 99=0A=
>>>     eMail: matthias.schoepfer@identpro.de=0A=
>>>=0A=
>>>     http://www.identpro.de=0A=
>>>=0A=
>>>     identplus=AE - Das 3D Staplerleitsystem mit enormen Sparpotenzial: =
z. B.=0A=
>>>     =FCber 67.000 EUR pro Jahr bei 500 Transporten t=E4glich! Berechnen=
 Sie das=0A=
>>>     Einsparpotenzial f=FCr Ihr Lager mit dem identplus=AE Potenzialrech=
ner.=0A=
>>>=0A=
>>>     identplus=AE live erleben: Vereinbaren Sie jetzt einen Termin!=0A=
>>>=0A=
>>>     ---------------------------------=0A=
>>>     IdentPro GmbH=0A=
>>>     Member of Dr. Wack Holding GmbH & Co.KG=0A=
>>>     Sitz und Registergericht: St. Augustin, HRB 9770 Siegburg=0A=
>>>     Gesch=E4ftsf=FChrer: Michael Wack=0A=
>>>     Umsatzsteuer-ID-Nr.: DE 254 824 945=0A=
>>>     WEEE-Reg.-Nr. DE 79026890=0A=
>>>=0A=
>>> Open Tracking=0A=
>>=0A=
>>=0A=
>> --=0A=
>> Dr.-Ing. Matthias Sch=F6pfer=0A=
>>=0A=
>> Softwareentwicklung=0A=
>>=0A=
>> ____________________________________=0A=
>>=0A=
>> IdentPro GmbH=0A=
>> Camp-Spich-Str. 4=0A=
>> 53842 Troisdorf=0A=
>>=0A=
>> Tel:   +49 (0)2241 / 866 392 46=0A=
>> Fax:   +49 (0)2241 / 866 392 99=0A=
>> eMail: matthias.schoepfer@identpro.de=0A=
>>=0A=
>> http://www.identpro.de=0A=
>>=0A=
>> identplus=AE - Das 3D Staplerleitsystem mit enormen Sparpotenzial: z. B.=
=0A=
>> =FCber 67.000 EUR pro Jahr bei 500 Transporten t=E4glich! Berechnen Sie =
das=0A=
>> Einsparpotenzial f=FCr Ihr Lager mit dem identplus=AE Potenzialrechner.=
=0A=
>>=0A=
>> identplus=AE live erleben: Vereinbaren Sie jetzt einen Termin!=0A=
>>=0A=
>> ---------------------------------=0A=
>> IdentPro GmbH=0A=
>> Member of Dr. Wack Holding GmbH & Co.KG=0A=
>> Sitz und Registergericht: St. Augustin, HRB 9770 Siegburg=0A=
>> Gesch=E4ftsf=FChrer: Michael Wack=0A=
>> Umsatzsteuer-ID-Nr.: DE 254 824 945=0A=
>> WEEE-Reg.-Nr. DE 79026890=0A=
>> --=0A=
>> _______________________________________________=0A=
>> yocto mailing list=0A=
>> yocto@yoctoproject.org=0A=
>> https://lists.yoctoproject.org/listinfo/yocto=0A=
> =0A=
> =0A=
> =0A=
=0A=
=0A=
-- =0A=
Dr.-Ing. Matthias Sch=F6pfer=0A=
=0A=
Softwareentwicklung=0A=
=0A=
____________________________________=0A=
=0A=
IdentPro GmbH=0A=
Camp-Spich-Str. 4=0A=
53842 Troisdorf=0A=
=0A=
Tel:   +49 (0)2241 / 866 392 46=0A=
Fax:   +49 (0)2241 / 866 392 99=0A=
eMail: matthias.schoepfer@identpro.de=0A=
=0A=
http://www.identpro.de=0A=
=0A=
identplus=AE - Das 3D Staplerleitsystem mit enormen Sparpotenzial: z. B.=0A=
=FCber 67.000 EUR pro Jahr bei 500 Transporten t=E4glich! Berechnen Sie das=
=0A=
Einsparpotenzial f=FCr Ihr Lager mit dem identplus=AE Potenzialrechner.=0A=
=0A=
identplus=AE live erleben: Vereinbaren Sie jetzt einen Termin!=0A=
=0A=
---------------------------------=0A=
IdentPro GmbH=0A=
Member of Dr. Wack Holding GmbH & Co.KG=0A=
Sitz und Registergericht: St. Augustin, HRB 9770 Siegburg=0A=
Gesch=E4ftsf=FChrer: Michael Wack=0A=
Umsatzsteuer-ID-Nr.: DE 254 824 945=0A=
WEEE-Reg.-Nr. DE 79026890=0A=

